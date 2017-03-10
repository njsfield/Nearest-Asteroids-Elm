module Helpers.SvgComponents exposing (asteroidSvg)

import Model exposing (..)
import Update exposing (..)
import Html exposing (..)
import Svg exposing (svg, circle, text_, text, g)
import Svg.Attributes as Attrs exposing (viewBox, fill, cx, cy, r, stroke, textAnchor, x, y, fontSize)


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



{- asteroidSvg: Takes a setting, a list of asteroids, and a grid
   to construct an svg with a nested set of elements built by the asteroidCircle function
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



{- asteroidCircle: Uses the Index value of the tuple to scale against the x
   value of the grid and the total number of elements.
   Outputs a g containing the circle, and a text element containing the asteroid value
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


svgCircle : X -> Y -> R -> Svg.Svg msg
svgCircle x y r =
    circle [ fill "#dddddd", Attrs.cx x, Attrs.cy y, Attrs.r r ] []


svgText : X -> Y -> Display -> Svg.Svg msg
svgText x y value =
    text_ [ Attrs.x x, Attrs.y y, textAnchor "middle", fontSize "30%" ] [ Svg.text (value) ]


mapValuesFromSetting : Setting -> AsteroidList -> List AsteroidSvgData
mapValuesFromSetting setting asteroids =
    case setting of
        Name ->
            prepareNameData <| List.map .name asteroids

        MinSize ->
            prepareNameData <| List.map (\x -> x.minsize |> toString) asteroids

        Speed ->
            prepareNameData <| List.map (\x -> x.speed |> toString) asteroids

        MissDistance ->
            prepareNameData <| List.map (\x -> x.missdistance |> toString) asteroids



{- Takes an asteroid list, pulls the .name field,
   evenly distributes x values from 0 to 1.
   equally distributes y values as 0.5
   equally distributes r values as 1
-}


prepareNameData : List String -> List AsteroidSvgData
prepareNameData namelist =
    let
        indexed =
            List.indexedMap (,) namelist

        scaleBy =
            List.length namelist - 1 |> toFloat

        xList =
            List.map (\( index, _ ) -> (toFloat index) / scaleBy) indexed

        yList =
            List.map (always 0.5) indexed

        rList =
            List.map (always (1.0 / (scaleBy * 2))) indexed
    in
        List.map4 AsteroidSvgData namelist xList yList rList
