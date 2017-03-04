module Main exposing (..)

import Update exposing (..)
import Model exposing (..)
import View exposing (..)
import Html exposing (..)


main : Program Never Model Msg
main =
    program
        { update = update
        , init = ( initialModel, getAsteroids )
        , view = view
        , subscriptions = \_ -> Sub.none
        }
