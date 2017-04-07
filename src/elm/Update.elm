module Update exposing (..)

import Model exposing (..)
import Helpers.NasaData exposing (neoKeys, buildNasaUrl)
import Helpers.FormatDate exposing (formatDate)
import Helpers.ChangeSettings exposing (nextSetting, previousSetting)
import Helpers.NasaDecoder exposing (nasaDecoder)
import Http exposing (..)
import Date exposing (Date)
import Task
import Window exposing (..)


type Msg
    = AsteroidRequest (Result Http.Error AsteroidList)
    | SetDate (Maybe Date)
    | NextSetting
    | PreviousSetting
    | Resize Int



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
                ( { model | date = newDate }, getAsteroids newDate )

        AsteroidRequest (Ok res) ->
            ( { model | asteroids = res }, getWidth )

        AsteroidRequest (Err _) ->
            ( { model | asteroidsErr = Error <| resultErrMessage model.date initialModel.date }, getWidth )

        NextSetting ->
            { model | setting = (nextSetting model.setting) } ! []

        PreviousSetting ->
            { model | setting = (nextSetting model.setting) } ! []

        Resize w ->
            setOrientation w model ! []



-- getWidth : get initial width of screen


getWidth : Cmd Msg
getWidth =
    Task.perform Resize width



-- setOrientation : gets window width and sets orientation in model


setOrientation : Int -> Model -> Model
setOrientation w model =
    if w < 500 then
        { model | orientation = Portrait }
    else
        { model | orientation = Landscape }



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
    "Unable to generate results for " ++ currentDate ++ ", here are results for " ++ defaultDate



-- Called by update function (with date String)


getAsteroids : String -> Cmd Msg
getAsteroids date =
    Http.get (buildNasaUrl date) nasaDecoder
        |> Http.send AsteroidRequest



-- SUBSCRIPTIONS
{- get window width on resize, pass into Resize Msg -}


subscriptions : Model -> Sub Msg
subscriptions model =
    Window.resizes (\{ height, width } -> Resize width)
