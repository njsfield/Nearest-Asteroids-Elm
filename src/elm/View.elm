module View exposing (..)

import Model exposing (..)
import Update exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)


view : Model -> Html Msg
view model =
    div [ class "tc mt5" ]
        [ h2 [ class "sans-serif" ] [ text model.date ]
        , p [ class "sans-serif" ] [ text model.asteroidsErr ]
        , p [] [ text <| toString model.asteroids ]
        ]
