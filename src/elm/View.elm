module View exposing (..)

import Model exposing (..)
import Update exposing (..)
import Helpers.ViewComponents exposing (viewNavigation, viewListItems)
import Html exposing (..)
import Html.Attributes exposing (..)


{-
   view: Builds view from Model
   1. Navigation Component, Containing Current Setting and UI buttons to toggle Next/Previous Setting
   2. (optional) Error Message
   3. Data Component. Displays Asteroid data
   4. Date Compoent. Displays Current (Or Default Date)
-}


view : Model -> Html Msg
view { setting, asteroidsErr, asteroids, date, grid } =
    div [ class "tc mt5" ]
        [ viewNavigation PreviousSetting setting NextSetting
        , p [ class "sans-serif" ] [ text asteroidsErr ]
        , viewListItems setting asteroids
        , h2 [ class "sans-serif" ] [ text date ]
        ]
