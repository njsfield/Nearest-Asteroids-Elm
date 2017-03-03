module Update exposing (..)

import Model exposing (..)
import Json.Decode exposing (..)
import Json.Decode.Pipeline exposing (..)
import Http


type Msg
    = AsteroidRequest (Result Http.Error AsteroidDict)


init : ( Model, Cmd Msg )
init =
    ( initialModel, getAsteroids )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        AsteroidRequest (Ok res) ->
            { model | asteroids = res } ! []

        AsteroidRequest (Err _) ->
            { model | asteroidsErr = "something went wrong" } ! []


getAsteroids : Cmd Msg
getAsteroids =
    Http.get nasaUrl resultsDecoder
        |> Http.send AsteroidRequest


resultsDecoder : Decoder AsteroidDict
resultsDecoder =
    at [ "near_earth_objects" ] asteroidListDecoder


asteroidListDecoder : Decoder AsteroidDict
asteroidListDecoder =
    dict (list asteroidDecoder)


asteroidDecoder : Decoder Asteroid
asteroidDecoder =
    decode Asteroid
        |> required "name" string
        |> required "neo_reference_id" string


nasaUrl : String
nasaUrl =
    "https://api.nasa.gov/neo/rest/v1/feed?start_date=2017-03-02&api_key=3NW9wqg2QvSWpj4WAFj3tTQYTK85Hj1UEqKsoRo4"
