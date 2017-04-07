module Model exposing (..)

-- Model: @TODO: Add date & setting Types


type alias Model =
    { date : String
    , setting : Setting
    , orientation : Orientation
    , asteroids : AsteroidList
    , asteroidsErr : ErrorMessage
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


type Orientation
    = Landscape
    | Portrait


type ErrorMessage
    = Error String
    | None


initialModel : Model
initialModel =
    { date = "2017-03-02"
    , setting = Name
    , orientation = Portrait
    , asteroids =
        [ { name = "(2017 BU6)"
          , minsize = 0.0234324
          , speed = 0.234
          , missdistance = 0.342
          }
        , { name = "(2013 D6)"
          , minsize = 0.0534324
          , speed = 0.134
          , missdistance = 0.242
          }
        , { name = "(KK 206)"
          , minsize = 0.066624
          , speed = 0.194
          , missdistance = 0.142
          }
        , { name = "(210K)"
          , minsize = 0.076624
          , speed = 0.394
          , missdistance = 0.442
          }
        , { name = "(2015 44)"
          , minsize = 0.031624
          , speed = 0.594
          , missdistance = 0.542
          }
        ]
    , asteroidsErr = None
    }
