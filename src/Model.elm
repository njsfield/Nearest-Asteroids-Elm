module Model exposing (..)

import Dict exposing (Dict)


type alias Model =
    { asteroids : AsteroidDict
    , asteroidsErr : String
    }


type alias AsteroidDict =
    Dict String (List Asteroid)


type alias Asteroid =
    { name : String
    , referenceId : String
    }


initialModel : Model
initialModel =
    { asteroids = Dict.fromList [ ( "03-03-2017", [ { name = "(2017 BU6)", referenceId = "3767006" } ] ) ]
    , asteroidsErr = ""
    }
