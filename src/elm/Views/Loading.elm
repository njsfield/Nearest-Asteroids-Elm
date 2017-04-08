module Views.Loading exposing (..)

import Html exposing (..)
import Types exposing (..)
import Html.Attributes exposing (..)
import Styles.Classes exposing (tachs)


-- loadingView: loading class provides ellipsis animation


loadingView : Html Msg
loadingView =
    div [ class tachs.main ]
        [ div [ class tachs.loading ]
            [ text "loading"
            , span [ class tachs.loadingdots ] [ text "..." ]
            ]
        ]
