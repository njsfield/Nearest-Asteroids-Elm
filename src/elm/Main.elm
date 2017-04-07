module Main exposing (..)

import Model exposing (..)
import Update exposing (..)
import Types exposing (..)
import View exposing (..)
import Html exposing (..)


main : Program Never Model Msg
main =
    program
        { update = update
        , init = ( initialModel, now )
        , view = view
        , subscriptions = subscriptions
        }
