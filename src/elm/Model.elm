module Model exposing (..)

-- Model: @TODO: Add date & setting Types


type alias Model =
    { date : String
    , setting : Setting
    , asteroids : AsteroidList
    , asteroidsErr : String
    }


type alias AsteroidList =
    List Asteroid


type alias Asteroid =
    { name : String
    , minsize : Float
    , speed : Float
    , missdistance : Float
    }


type Setting
    = Name
    | MinSize
    | Speed
    | MissDistance


initialModel : Model
initialModel =
    { date = "2017-03-02"
    , setting = Name
    , asteroids =
        [ { name = "(2017 BU6)"
          , minsize = 0.0234324
          , speed = 0.234
          , missdistance = 0.342
          }
        ]
    , asteroidsErr = ""
    }
