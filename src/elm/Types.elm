module Types exposing (..)


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
