module View exposing (..)

import Model exposing (..)
import Update exposing (..)
import Helpers.ViewComponents exposing (viewNavigation, viewListItems)
import Html exposing (..)
import Html.Attributes exposing (..)


view : Model -> Html Msg
view { setting, asteroidsErr, asteroids, date } =
    div [ class "tc mt5" ]
        [ viewNavigation setting
        , p [ class "sans-serif" ] [ text asteroidsErr ]
        , viewListItems setting asteroids
        , h2 [ class "sans-serif" ] [ text date ]
        ]
