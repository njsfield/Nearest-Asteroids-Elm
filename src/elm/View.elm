module View exposing (..)

import Model exposing (..)
import Update exposing (..)
import Views.Error exposing (..)
import Views.Nav exposing (..)
import Views.Svg exposing (..)
import Styles.Classes exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)


{-
   view: Builds view from Model
   1. Navigation Component, Containing Current Setting and UI buttons to toggle Next/Previous Setting
   2. (optional) Error Element
   3. SVG component, displays asteroid data.
   4. Date Compoent. Displays Current (Or Default Date)
-}


view : Model -> Html Msg
view { setting, asteroidsErr, asteroids, date, orientation } =
    div [ class tachs.main ]
        [ navigation PreviousSetting setting NextSetting
        , errorHandler asteroidsErr
        , div [ class tachs.svgcontainer ] [ asteroidSvg setting asteroids orientation ]
        , h2 [ class tachs.date ] [ text date ]
        ]
