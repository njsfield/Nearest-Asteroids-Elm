module Model exposing (..)

import Dict exposing (Dict)


type alias Model =
    { asteroids : AsteroidList
    , asteroidsErr : String
    }


type alias AsteroidList =
    List Asteroid


type alias Asteroid =
    { name : String
    , minsize : Float
    , referenceId : String
    }


initialModel : Model
initialModel =
    { asteroids = [ { name = "(2017 BU6)", minsize = 0.0234324, referenceId = "3767006" } ]
    , asteroidsErr = ""
    }
