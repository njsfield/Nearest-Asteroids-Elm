module Main exposing (..)

import Update exposing (..)
import Types exposing (..)
import View exposing (..)
import Html exposing (..)


-- initialModel: Defaults on data/HTTP error.


initialModel : Model
initialModel =
    { date = "2017-03-02"
    , setting = Name
    , orientation = Landscape
    , asteroids =
        [ { name = "(2017 BU6)"
          , minsize = 0.0234324
          , speed = 0.234
          , missdistance = 23424153.234
          }
        ]
    , asteroidsErr = None
    , loading = True
    }



-- main: The 'now' Cmd Msg initiates Update.


main : Program Never Model Msg
main =
    program
        { update = update
        , init = ( initialModel, now )
        , view = view
        , subscriptions = subscriptions
        }
