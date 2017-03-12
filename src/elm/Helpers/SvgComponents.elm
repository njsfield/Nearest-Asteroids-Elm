module Helpers.SvgComponents exposing (asteroidSvg)

import Model exposing (..)
import Update exposing (..)
import Html exposing (..)
import Svg exposing (..)
import Svg.Attributes as Attrs exposing (..)


type alias AsteroidSvgData =
    { display : String
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
-}


prepareNameData : List Display -> List AsteroidSvgData
prepareNameData namelist =
    if List.length namelist == 1 then
        lonelyAsteroidData namelist
    else
        let
            indexed =
                List.indexedMap (,) namelist

            scaleBy =
                List.length namelist - 1 |> toFloat

            xs =
                List.map (\( index, _ ) -> (toFloat index) / scaleBy) indexed

            ys =
                List.map (always 0.5) indexed

            rs =
                List.map (always (1.0 / (scaleBy * 2.5))) indexed
        in
            List.map4 AsteroidSvgData namelist xs ys rs



{- lonelyAsteroidData: called by prepareMinSizeData, prepareSpeedData, and missDistanceData functions
   in the event that only one asteroid list item exists.
-}


lonelyAsteroidData : List String -> List AsteroidSvgData
lonelyAsteroidData asteroid =
    [ AsteroidSvgData (Maybe.withDefault "" <| List.head asteroid) 0.5 0.5 0.1 ]



{- asteroidSvg: Takes a setting, a list of asteroids, and a grid.
   calls mapValuesfromSetting to construct appropriate SVG data in AsteroidSvgData format.
   then uses that data to build a group element composed of an svg circle and text element
-}


asteroidSvg : Setting -> List Asteroid -> Grid -> Html Msg
asteroidSvg setting asteroids ( x, y ) =
    let
        svgViewBox =
            "-50 0 " ++ (toString (x + 100)) ++ " " ++ (toString y)

        values =
            mapValuesFromSetting setting asteroids

        total =
            List.length values
    in
        svg
            [ Attrs.viewBox svgViewBox ]
            (List.map
                (\item -> dataGroup item ( x, y ))
                values
            )



{- dataGroup: Takes a record of AsteroidData,
   uses it to size and position a circle shape
   and outputs the display value into a text element
-}


dataGroup : AsteroidSvgData -> Grid -> Svg.Svg msg
dataGroup { display, x, y, r } ( w, h ) =
    let
        xScaled =
            toString <| x * toFloat w

        yScaled =
            toString <| y * toFloat h

        rScaled =
            toString <| round <| r * toFloat w
    in
        g []
            [ svgCircle xScaled yScaled rScaled
            , svgText xScaled yScaled display
            ]



{-
   svgCircle: Takes x and y string coordinates, and radius string value
   to construct circle shape
   @TODO: Add random colours
-}


svgCircle : X -> Y -> R -> Svg.Svg msg
svgCircle x y rad =
    circle [ fill "#dddddd", cx x, cy y, r rad ] []



{-
   svgText: takes x and y string coordinates, and display text string,
   to construct text element
   @TODO: Format font styles of display text
-}


svgText : X -> Y -> Display -> Svg.Svg msg
svgText xpos ypos displaytext =
    text_ [ x xpos, y ypos, textAnchor "middle", fontSize "30%" ] [ Svg.text (displaytext) ]
