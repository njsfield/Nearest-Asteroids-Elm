module Views.Error exposing (errorHandler)

import Model exposing (..)
import Update exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)


{- errorHandler:
   Accepts ErrorMessage, returns either an error wrapped in html elt,
   or an empty text node
-}


errorHandler : ErrorMessage -> Html Msg
errorHandler errormessage =
    case errormessage of
        Error error ->
            p [ class "sans-serif" ] [ text error ]

        None ->
            Html.text ""
