module Utils.NasaDecoder exposing (nasaDecoder)

import Types exposing (..)
import Data exposing (neoKeys)
import Json.Decode as Json exposing (..)
import Json.Decode.Pipeline exposing (..)
import Dict exposing (..)


nasaDecoder : Decoder (List Asteroid)
nasaDecoder =
    at [ neoKeys.neo ] <| Json.map firstDictList (dict (list asteroidDecoder))


firstDictList : Dict String (List a) -> List a
firstDictList dictList =
    let
        dictKeys =
            Dict.keys dictList

        firstKey =
            Maybe.withDefault "" <| List.head dictKeys
    in
        Maybe.withDefault [] <| Dict.get firstKey dictList


asteroidDecoder : Decoder Asteroid
asteroidDecoder =
    decode Asteroid
        |> required neoKeys.name string
        |> custom minsizeDecoder
        |> custom (closeApproachDecoder [ neoKeys.rvel, neoKeys.kph ])
        |> custom (closeApproachDecoder [ neoKeys.miss, neoKeys.k ])


minsizeDecoder : Decoder Float
minsizeDecoder =
    at [ neoKeys.estdiam, neoKeys.k, neoKeys.estdiammin ] float


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


listHeadDecoder : Decoder Float -> Decoder Float
listHeadDecoder nextDecoder =
    Json.map (\lst -> Maybe.withDefault 0 <| List.head lst) <| list nextDecoder
