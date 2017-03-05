module Update exposing (..)

import Model exposing (..)
import Json.Decode as D exposing (..)
import Json.Decode.Pipeline exposing (..)
import Http
import Maybe exposing (..)
import Dict exposing (..)
import List exposing (..)
import NasaData exposing (neoKeys, buildNasaUrl)
import Date exposing (Date)
import Task


type Msg
    = AsteroidRequest (Result Http.Error AsteroidList)
    | SetDate (Maybe Date)



-- Update: @TODO: Instead of Err message, model could be initialModel


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        SetDate Nothing ->
            ( model, (getAsteroids model.date) )

        SetDate (Just date) ->
            ( model, (getAsteroids (formatDate date)) )

        AsteroidRequest (Ok res) ->
            { model | asteroids = res } ! []

        AsteroidRequest (Err err) ->
            { model | asteroidsErr = ("something went wrong" ++ toString err) } ! []



-- formatDate : takes a raw date and outputs it as "YYYY-MM-DD"


formatDate : Date.Date -> String
formatDate rawdate =
    (toString <| Date.year rawdate)
        ++ "-"
        ++ (monthToNum (Date.month rawdate))
        ++ "-"
        ++ (toString <| Date.day rawdate)


monthToNum : Date.Month -> String
monthToNum month =
    case month of
        Date.Jan ->
            "01"

        Date.Feb ->
            "02"

        Date.Mar ->
            "03"

        Date.Apr ->
            "04"

        Date.May ->
            "05"

        Date.Jun ->
            "06"

        Date.Jul ->
            "07"

        Date.Aug ->
            "08"

        Date.Sep ->
            "09"

        Date.Oct ->
            "10"

        Date.Nov ->
            "11"

        Date.Dec ->
            "12"



-- Cmd to return Maybe Date


now : Cmd Msg
now =
    Task.attempt processDate Date.now


processDate : Result String Date -> Msg
processDate result =
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
    at [ neoKeys.neo ] (D.map firstDictList (dict (list asteroidDecoder)))



{- firstDictlist: Takes a Dict of Lists, gets its list of String keys,
   Then takes the first key and uses to to return the value of the first List
-}


firstDictList : Dict String (List a) -> List a
firstDictList dictList =
    let
        dictKeys =
            keys dictList

        firstKey =
            withDefault "" (head dictKeys)
    in
        withDefault [] (get firstKey dictList)



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
    D.map (\lst -> withDefault "" (head lst)) (list nextDecoder)



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
