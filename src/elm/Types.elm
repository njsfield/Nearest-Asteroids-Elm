module Types exposing (..)

import Http exposing (..)
import Date exposing (Date)


-- Msg


type Msg
    = AsteroidRequest (Result Http.Error AsteroidList)
    | SetDate (Maybe Date)
    | NextSetting
    | PreviousSetting
    | Resize Int



-- Model


type alias Model =
    { date : String
    , setting : Setting
    , orientation : Orientation
    , asteroids : AsteroidList
    , asteroidsErr : ErrorMessage
    , loading : Bool
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



-- Svg Model


type alias AsteroidSvgData =
    { display : String
    , index : Int
    , x : Float
    , y : Float
    , r : Float
    }


type alias Name =
    String


type alias Unit =
    Float


type alias Grid =
    ( Int, Int )


type alias Coord =
    ( String, String )
