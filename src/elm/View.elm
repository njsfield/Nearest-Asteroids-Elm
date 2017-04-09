module View exposing (..)

import Types exposing (..)
import Update exposing (..)
import Views.Error exposing (errorHandler)
import Views.Nav exposing (navigation)
import Views.Svg exposing (asteroidSvg)
import Views.Loading exposing (loadingView)
import Styles.Classes exposing (..)
import Utils.FormatDate exposing (reverseDate)
import Html exposing (..)
import Html.Attributes exposing (..)


-- view: Displays loading view before date & http requests resolved, then displays main app.


view : Model -> Html Msg
view { setting, asteroidsErr, asteroids, date, orientation, loading } =
    if (loading == True) then
        loadingView
    else
        div [ class tachs.main ]
            [ navigation PreviousSetting setting NextSetting
            , errorHandler asteroidsErr
            , div [ class <| tachs.svgcontainer ++ (scaleSwitch setting) ] [ asteroidSvg setting asteroids orientation ]
            , h2 [ class tachs.date ] [ text <| reverseDate date ]
            ]
