module Views.Error exposing (errorHandler)

import Types exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Styles.Classes exposing (tachs)


errorHandler : ErrorMessage -> Html Msg
errorHandler errormessage =
    case errormessage of
        Error error ->
            p [ class tachs.error ] [ text error ]

        None ->
            Html.text ""
