module Views.Svg exposing (asteroidSvg)

import Model exposing (..)
import Update exposing (..)
import Html exposing (..)
import Svg exposing (..)
import Svg.Attributes as Attrs exposing (..)
import Styles.Colours exposing (getPastel)
import Styles.Classes exposing (tachs)


type alias AsteroidSvgData =
    { display : String
    , index : Int
    , x : Float
    , y : Float
    , r : Float
    }


type alias X =
    String


type alias Y =
    String


type alias R =
    String


type alias Display =
    String


type alias Grid =
    ( Int, Int )


type alias Coord =
    ( String, String )



{- Takes a setting and list of Asteroids. Then calls associative functions to build
   AsteroidSvgData (used to construct circle and text elements)
   @TODO: build prepareMinSizeData, prepareSpeedData, and missDistanceData functions
-}


mapValuesFromSetting : Setting -> AsteroidList -> List AsteroidSvgData
mapValuesFromSetting setting asteroids =
    case setting of
        Name ->
            prepareNameData <| List.map .name asteroids

        MinSize ->
            -- @TODO: prepareMinSizeData function
            prepareNameData <| List.map (\x -> x.minsize |> toString) asteroids

        Speed ->
            -- @TODO: prepareSpeedData function
            prepareNameData <| List.map (\x -> x.speed |> toString) asteroids

        MissDistance ->
            -- @TODO: missDistanceData function
            prepareNameData <| List.map (\x -> x.missdistance |> toString) asteroids



{- prepareNameData: takes a list of string name values.
   evenly distributes x values from 0 to 1.
   equally distributes y values as 0.5
   equally distributes r values as 1 / (List length * 2 - 2)
   Adds an index int to each asteroid
-}


prepareNameData : List Display -> List AsteroidSvgData
prepareNameData namelist =
    if List.length namelist == 1 then
        lonelyAsteroidData namelist
    else
        let
            indexed =
                List.indexedMap (,) namelist

            indexes =
                List.map (\( index, _ ) -> index) indexed

            scaleBy =
                List.length namelist - 1 |> toFloat

            xs =
                List.map (\x -> toFloat x / scaleBy) indexes

            ys =
                List.map (always 0.5) indexes

            rs =
                List.map (always (1.0 / (scaleBy * 2.5))) indexes
        in
            List.map5 AsteroidSvgData namelist indexes xs ys rs



{- lonelyAsteroidData: called by prepareMinSizeData, prepareSpeedData, and missDistanceData functions
   in the event that only one asteroid list item exists.
-}


lonelyAsteroidData : List String -> List AsteroidSvgData
lonelyAsteroidData asteroid =
    [ AsteroidSvgData (Maybe.withDefault "" <| List.head asteroid) 0 0.5 0.5 0.1 ]



{- asteroidSvg: Takes a setting, a list of asteroids, and a grid.
   calls mapValuesfromSetting to construct appropriate SVG data in AsteroidSvgData format.
   then uses that data to build a group element composed of an svg circle and text element.
   Padding is applied to the svg and overflow is set to visible
-}


buildGrid : Orientation -> Grid
buildGrid orientation =
    case orientation of
        Landscape ->
            ( 500, 200 )

        Portrait ->
            ( 100, 150 )


coordMap : a -> a -> Orientation -> ( a, a )
coordMap a b orientation =
    case orientation of
        Landscape ->
            ( a, b )

        Portrait ->
            ( b, a )


asteroidSvg : Setting -> List Asteroid -> Orientation -> Html Msg
asteroidSvg setting asteroids orientation =
    let
        ( x, y ) =
            buildGrid orientation

        svgViewBox =
            "0 0 " ++ (toString x) ++ " " ++ (toString y)

        values =
            mapValuesFromSetting setting asteroids

        total =
            List.length values
    in
        svg
            [ Attrs.class tachs.svg, Attrs.viewBox svgViewBox ]
            (List.map
                (\item -> dataGroup item ( x, y ) orientation)
                values
            )



{- dataGroup: Takes a record of AsteroidData,
   uses it to size and position a circle shape
   and outputs the display value into a text element
-}


dataGroup : AsteroidSvgData -> Grid -> Orientation -> Svg.Svg msg
dataGroup { display, index, x, y, r } ( w, h ) orientation =
    let
        ( a, b ) =
            coordMap w h orientation

        xScaled =
            toString <| x * toFloat a

        yScaled =
            toString <| y * toFloat b

        rScaled =
            toString <| round <| r * toFloat a

        coords =
            coordMap xScaled yScaled orientation
    in
        g []
            [ svgCircle index coords rScaled
            , svgText coords display
            ]



{-
   svgCircle: Takes the asteroid index, x and y string coordinates,
   and radius string value to construct circle shape
-}


svgCircle : Int -> Coord -> R -> Svg.Svg msg
svgCircle index ( a, b ) rad =
    circle [ fill <| getPastel index, cx a, cy b, r rad ] []



{-
   svgText: takes x and y string coordinates, and display text string,
   to construct text element
-}


svgText : Coord -> Display -> Svg.Svg msg
svgText ( a, b ) displaytext =
    text_
        [ x a
        , y b
        , textAnchor "middle"
        , Attrs.class tachs.svgtext
        , fill tachs.svgtextcol
        ]
        [ Svg.text (displaytext) ]
