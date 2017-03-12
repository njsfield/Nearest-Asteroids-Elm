module View exposing (..)

import Model exposing (..)
import Update exposing (..)
import Helpers.HtmlComponents exposing (viewNavigation, errorHandler)
import Helpers.SvgComponents exposing (asteroidSvg)
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
view { setting, asteroidsErr, asteroids, date, grid } =
    div [ class "tc w-100 h-100vh flex flex-column items-center justify-center bg-dark-blue" ]
        [ viewNavigation PreviousSetting setting NextSetting
        , errorHandler asteroidsErr
        , div [ class "tc dib w-80" ] [ asteroidSvg setting asteroids grid ]
        , h2 [ class "sans-serif washed-blue tracked-mega fw3" ] [ text date ]
        ]
