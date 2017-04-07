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
    , orientation = Landscape
    , asteroids =
        [ { name = "(2017 BU6)"
          , minsize = 0.0234324
          , speed = 0.234
          , missdistance = 23424153.234
          }
        , { name = "(2013 D6)"
          , minsize = 0.0534324
          , speed = 0.134
          , missdistance = 25142321.153
          }
        , { name = "(KK 206)"
          , minsize = 0.066624
          , speed = 0.194
          , missdistance = 31453423.4251
          }
        , { name = "(210K)"
          , minsize = 0.076624
          , speed = 0.394
          , missdistance = 44234234.15321
          }
        , { name = "(2015 44)"
          , minsize = 0.031624
          , speed = 0.594
          , missdistance = 54234324.132
          }
        ]
    , asteroidsErr = None
    }
