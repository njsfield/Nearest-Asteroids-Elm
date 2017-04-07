module Model exposing (..)

import Types exposing (..)


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
