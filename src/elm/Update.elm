module Update exposing (..)

import Model exposing (..)
import Json.Decode as Json exposing (..)
import Json.Decode.Pipeline exposing (..)
import Http
import Dict exposing (..)
import Helpers.NasaData exposing (neoKeys, buildNasaUrl)
import Helpers.FormatDate exposing (formatDate)
import Date exposing (Date)
import Task


type Msg
    = AsteroidRequest (Result Http.Error AsteroidList)
    | SetDate (Maybe Date)
    | NextSetting
    | PreviousSetting



-- Update: @TODO: Instead of Err message, model could be initialModel


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        SetDate Nothing ->
            ( model, (getAsteroids model.date) )

        SetDate (Just date) ->
            let
                newDate =
                    formatDate date
            in
                ( { model | date = newDate }, (getAsteroids newDate) )

        AsteroidRequest (Ok res) ->
            { model | asteroids = res } ! []

        AsteroidRequest (Err err) ->
            { model | asteroidsErr = ("something went wrong" ++ toString err) } ! []



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
    at [ neoKeys.neo ] (Json.map firstDictList (dict (list asteroidDecoder)))



{- firstDictlist: Takes a Dict of Lists, gets its list of String keys,
   Then takes the first key and uses to to return the value of the first List
-}


firstDictList : Dict String (List a) -> List a
firstDictList dictList =
    let
        dictKeys =
            Dict.keys dictList

        firstKey =
            Maybe.withDefault "" (List.head dictKeys)
    in
        Maybe.withDefault [] (Dict.get firstKey dictList)



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


closeApproachDecoder : List String -> Decoder String
closeApproachDecoder depthList =
    at [ neoKeys.closedate ] (listHeadDecoder (at depthList string))



{- listHeadDecoder: Takes a decoder argument, maps over the List input to get the head of the list
   Then calls the decoder argument with the result
-}


listHeadDecoder : Decoder String -> Decoder String
listHeadDecoder nextDecoder =
    Json.map (\lst -> Maybe.withDefault "" (List.head lst)) (list nextDecoder)



{- example :

   json =

   """
   {
      "close_approach_date" : [
        "{
          "relative_velocity" {
            "kilometers_per_hour" : "0.23"
          }
        }"
      ]
   }
   """

   decodeString (closeApproachDecoder [ neoKeys.rvel, neoKeys.kph ]) json == "0.25"

-}
