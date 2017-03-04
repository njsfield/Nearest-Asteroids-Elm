module Update exposing (..)

import Model exposing (..)
import Json.Decode as D exposing (..)
import Json.Decode.Pipeline exposing (..)
import Http
import Maybe exposing (..)
import Dict exposing (..)
import List exposing (..)
import NasaKeys exposing (neokeys)


type Msg
    = AsteroidRequest (Result Http.Error AsteroidList)


init : ( Model, Cmd Msg )
init =
    ( initialModel, getAsteroids )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        AsteroidRequest (Ok res) ->
            { model | asteroids = res } ! []

        AsteroidRequest (Err err) ->
            { model | asteroidsErr = ("something went wrong" ++ toString err) } ! []


getAsteroids : Cmd Msg
getAsteroids =
    Http.get nasaUrl resultsDecoder
        |> Http.send AsteroidRequest


resultsDecoder : Decoder (List Asteroid)
resultsDecoder =
    at [ neokeys.neo ] (D.map firstDictList (dict (list asteroidDecoder)))


firstDictList : Dict String (List a) -> List a
firstDictList dictList =
    let
        dictKeys =
            keys dictList

        firstKey =
            withDefault "" (head dictKeys)
    in
        withDefault [] (get firstKey dictList)


asteroidDecoder : Decoder Asteroid
asteroidDecoder =
    decode Asteroid
        |> required neokeys.name string
        |> custom minsizeDecoder
        |> custom (closeApproachDecoder [ neokeys.rvel, neokeys.kph ])
        |> custom (closeApproachDecoder [ neokeys.miss, neokeys.k ])


minsizeDecoder : Decoder Float
minsizeDecoder =
    at [ neokeys.estdiam, neokeys.k, neokeys.estdiammin ] float


closeApproachDecoder : List String -> Decoder String
closeApproachDecoder depthList =
    at [ neokeys.closedate ] (listHeadDecoder (at depthList string))


listHeadDecoder : Decoder String -> Decoder String
listHeadDecoder nextDecoder =
    D.map (\lst -> withDefault "" (head lst)) (list nextDecoder)


nasaUrl : String
nasaUrl =
    "https://api.nasa.gov/neo/rest/v1/feed?start_date=2017-03-02&api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
