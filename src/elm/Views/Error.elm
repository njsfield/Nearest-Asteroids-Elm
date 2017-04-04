module Views.Error exposing (errorHandler)

import Model exposing (..)
import Update exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Styles.Classes exposing (tachs)


{- errorHandler:
   Accepts ErrorMessage, returns either an error wrapped in html elt,
   or an empty text node
-}


errorHandler : ErrorMessage -> Html Msg
errorHandler errormessage =
    case errormessage of
        Error error ->
            p [ class tachs.error ] [ text error ]

        None ->
            Html.text ""
