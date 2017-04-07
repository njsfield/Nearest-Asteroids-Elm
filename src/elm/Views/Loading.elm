module Views.Loading exposing (..)

import Html exposing (..)
import Types exposing (..)
import Html.Attributes exposing (..)
import Styles.Classes exposing (tachs)


loadingView : Html msg
loadingView =
    div [ class tachs.main ]
        [ div [ class tachs.loading ] [ text "loading..." ]
        ]
