module View exposing (..)

import Model exposing (..)
import Update exposing (..)
import Helpers.HtmlComponents exposing (viewNavigation)
import Helpers.SvgComponents exposing (asteroidSvg)
import Html exposing (..)
import Html.Attributes exposing (..)


{-
   view: Builds view from Model
   1. Navigation Component, Containing Current Setting and UI buttons to toggle Next/Previous Setting
   2. (optional) Error Message
   3. SVG component, displays asteroid data.
   4. Date Compoent. Displays Current (Or Default Date)
-}


view : Model -> Html Msg
view { setting, asteroidsErr, asteroids, date, grid } =
    div [ class "tc mt5" ]
        [ viewNavigation PreviousSetting setting NextSetting
        , p [ class "sans-serif" ] [ text asteroidsErr ]
        , asteroidSvg setting asteroids grid
        , h2 [ class "sans-serif" ] [ text date ]
        ]
