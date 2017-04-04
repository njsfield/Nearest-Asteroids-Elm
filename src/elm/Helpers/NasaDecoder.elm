module Helpers.NasaDecoder exposing (nasaDecoder)

import Model exposing (..)
import Helpers.NasaData exposing (neoKeys)
import Json.Decode as Json exposing (..)
import Json.Decode.Pipeline exposing (..)
import Dict exposing (..)


{- nasaDecoder: at "near_earth_objects" field in result..
   Uses map with the firstDictList function to apply the resulting List items
   to the asteroidDecoder
-}


nasaDecoder : Decoder (List Asteroid)
nasaDecoder =
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
