module Utils.NasaDecoder exposing (nasaDecoder)

import Types exposing (..)
import Data exposing (neoKeys)
import Json.Decode as Json exposing (..)
import Json.Decode.Pipeline exposing (..)
import Dict exposing (..)


-- nasaDecoder: Extracts first object from date list in JSON.


nasaDecoder : Decoder (List Asteroid)
nasaDecoder =
    at [ neoKeys.neo ] <| Json.map firstDictList (dict (list asteroidDecoder))



-- firstDictList: Extract first list from Dict.


firstDictList : Dict String (List a) -> List a
firstDictList dictList =
    let
        dictKeys =
            Dict.keys dictList

        firstKey =
            Maybe.withDefault "" <| List.head dictKeys
    in
        Maybe.withDefault [] <| Dict.get firstKey dictList



-- asteroidDecoder: Extract fields from each asteroid object.


asteroidDecoder : Decoder Asteroid
asteroidDecoder =
    decode Asteroid
        |> required neoKeys.name string
        |> custom minsizeDecoder
        |> custom (closeApproachDecoder [ neoKeys.rvel, neoKeys.kph ])
        |> custom (closeApproachDecoder [ neoKeys.miss, neoKeys.k ])



-- minsizeDecoder: Extract estimated min size (km) float value.


minsizeDecoder : Decoder Float
minsizeDecoder =
    at [ neoKeys.estdiam, neoKeys.k, neoKeys.estdiammin ] float



-- closeApproachDecoder: Extract miss distance and speed (floats).


closeApproachDecoder : List String -> Decoder Float
closeApproachDecoder depthList =
    at [ neoKeys.closedate ] (listHeadDecoder <| at depthList stringToFloat)



-- stringToFloat: Extracts float values to match model.


stringToFloat : Decoder Float
stringToFloat =
    string
        |> andThen floatDecode



-- floatDecoder: Result helper.


floatDecode : String -> Decoder Float
floatDecode x =
    case String.toFloat x of
        Ok n ->
            succeed n

        Err e ->
            fail e



-- listHeadCoder: Steps into the first close approach date list always.


listHeadDecoder : Decoder Float -> Decoder Float
listHeadDecoder nextDecoder =
    Json.map (\lst -> Maybe.withDefault 0 <| List.head lst) <| list nextDecoder
