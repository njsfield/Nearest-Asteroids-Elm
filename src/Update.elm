module Update exposing (..)

import Model exposing (..)
import Json.Decode as D exposing (..)
import Json.Decode.Pipeline exposing (..)
import Http
import Maybe as M exposing (..)
import Dict exposing (..)
import List as L exposing (..)


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
    at [ "near_earth_objects" ] datesDecoder


datesDecoder : Decoder (List Asteroid)
datesDecoder =
    D.map firstValue (dict asteroidListDecoder)


firstValue : Dict String (List a) -> List a
firstValue dateList =
    let
        dateKeys =
            keys dateList

        firstDate =
            withDefault "" (head dateKeys)
    in
        withDefault [] (get firstDate dateList)


asteroidListDecoder : Decoder (List Asteroid)
asteroidListDecoder =
    list asteroidDecoder


asteroidDecoder : Decoder Asteroid
asteroidDecoder =
    decode Asteroid
        |> required "name" string
        |> custom speedDecoder
        |> required "neo_reference_id" string


speedDecoder : Decoder Float
speedDecoder =
    at [ "estimated_diameter", "kilometers", "estimated_diameter_min" ] float


nasaUrl : String
nasaUrl =
    "https://api.nasa.gov/neo/rest/v1/feed?start_date=2017-03-02&api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
