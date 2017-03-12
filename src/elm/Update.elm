module Update exposing (..)

import Model exposing (..)
import Json.Decode as Json exposing (..)
import Json.Decode.Pipeline exposing (..)
import Http
import Dict exposing (..)
import Helpers.NasaData exposing (neoKeys, buildNasaUrl)
import Helpers.FormatDate exposing (formatDate)
import Helpers.ChangeSettings exposing (nextSetting, previousSetting)
import Date exposing (Date)
import Task


type Msg
    = AsteroidRequest (Result Http.Error AsteroidList)
    | SetDate (Maybe Date)
    | NextSetting
    | PreviousSetting



{- update:
   1. Set Date
   2. Handle Json Request
   3. Handle Next/Previous Setting Msgs from UI
   @TODO: Perhaps refactor to handle SetDate and AsteroidRequest branches before update call
-}


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        SetDate Nothing ->
            ( model, getAsteroids model.date )

        SetDate (Just date) ->
            let
                newDate =
                    formatDate date
            in
                ( { model | date = newDate }, (getAsteroids newDate) )

        AsteroidRequest (Ok res) ->
            { model | asteroids = res } ! []

        AsteroidRequest (Err err) ->
            { model | asteroidsErr = Error <| resultErrMessage model.date initialModel.date } ! []

        NextSetting ->
            { model | setting = (nextSetting model.setting) } ! []

        PreviousSetting ->
            { model | setting = (nextSetting model.setting) } ! []



-- formatDate : takes a raw date and outputs it as "YYYY-MM-DD"
-- now: Attempts Date.now, then processes the result with processDate to return a Cmd Msg


now : Cmd Msg
now =
    Task.attempt processDateResult Date.now



-- processDate: Function to take the result of Date.now and convert it to SetDate Cmd


processDateResult : Result String Date -> Msg
processDateResult result =
    case result of
        Ok date ->
            SetDate (Just date)

        Err _ ->
            SetDate Nothing



-- Combine default and current date into an error message


resultErrMessage : String -> String -> String
resultErrMessage currentDate defaultDate =
    "Unable to generate results for" ++ currentDate ++ ", here are results for" ++ defaultDate



-- Called by update function (with date String)


getAsteroids : String -> Cmd Msg
getAsteroids date =
    Http.get (buildNasaUrl date) resultsDecoder
        |> Http.send AsteroidRequest



{- resultsDecoder: at "near_earth_objects" field in result..
   Uses map with the firstDictList function to apply the resulting List items
   to the asteroidDecoder
-}


resultsDecoder : Decoder (List Asteroid)
resultsDecoder =
    at [ neoKeys.neo ] <| Json.map firstDictList (dict (list asteroidDecoder))



{- firstDictlist: Takes a Dict of Lists, gets its list of String keys,
   Then takes the first key and uses to to return the value of the first List
-}


firstDictList : Dict String (List a) -> List a
firstDictList dictList =
    let
        dictKeys =
            Dict.keys dictList

        firstKey =
            Maybe.withDefault "" <| List.head dictKeys
    in
        Maybe.withDefault [] <| Dict.get firstKey dictList



{- asteroidDecoder: Pipeline decoder to build an Asteroid
   Custom fields are called with decoder functions that take string lists
    to be used as Decode.at fields
-}


asteroidDecoder : Decoder Asteroid
asteroidDecoder =
    decode Asteroid
        |> required neoKeys.name string
        |> custom minsizeDecoder
        |> custom (closeApproachDecoder [ neoKeys.rvel, neoKeys.kph ])
        |> custom (closeApproachDecoder [ neoKeys.miss, neoKeys.k ])



{- mindizeDecoder: Returns a float value (@TODO, return a String formatted in km)
   by using Decode.at on the list of neokeys to find values
-}


minsizeDecoder : Decoder Float
minsizeDecoder =
    at [ neoKeys.estdiam, neoKeys.k, neoKeys.estdiammin ] float



{- closeAproachDecoder: Takes a key list, and initially gets the "close_approach_data" field (list)
   Calls listHeadDecoder and passes that a Decode.at function with the key list to get a string
-}


closeApproachDecoder : List String -> Decoder Float
closeApproachDecoder depthList =
    at [ neoKeys.closedate ] (listHeadDecoder <| at depthList stringToFloat)


stringToFloat : Decoder Float
stringToFloat =
    string
        |> andThen floatDecode


floatDecode : String -> Decoder Float
floatDecode x =
    case String.toFloat x of
        Ok n ->
            succeed n

        Err e ->
            fail e



{- listHeadDecoder: Takes a decoder argument, maps over the List input to get the head of the list
   Then calls the decoder argument with the result
-}


listHeadDecoder : Decoder Float -> Decoder Float
listHeadDecoder nextDecoder =
    Json.map (\lst -> Maybe.withDefault 0 <| List.head lst) <| list nextDecoder
