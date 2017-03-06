module View exposing (..)

import Model exposing (..)
import Update exposing (..)
import Helpers.ViewComponents exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)


view : Model -> Html Msg
view model =
    div [ class "tc mt5" ]
        [ viewNavigation model.setting
        , p [ class "sans-serif" ] [ text model.asteroidsErr ]
        , ul [] (List.map (viewListItem model.setting) model.asteroids)
        , h2 [ class "sans-serif" ] [ text model.date ]
        ]
