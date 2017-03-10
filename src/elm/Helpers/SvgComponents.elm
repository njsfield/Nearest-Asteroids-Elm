module Helpers.SvgComponents exposing (asteroidSvg)

import Model exposing (..)
import Update exposing (..)
import Html exposing (..)
import Svg exposing (svg, circle, text_, text, g)
import Svg.Attributes exposing (viewBox, fill, cx, cy, r, stroke, textAnchor, x, y, fontSize)


-- asteroidSettingValues: Returns List of String values from Asteroid, depending on Setting


asteroidSettingValues : Setting -> AsteroidList -> List String
asteroidSettingValues setting asteroids =
    case setting of
        Name ->
            List.map .name asteroids

        MinSize ->
            List.map (\x -> x.minsize |> toString) asteroids

        Speed ->
            List.map (\x -> x.speed |> toString) asteroids

        MissDistance ->
            List.map (\x -> x.missdistance |> toString) asteroids



{- asteroidSvg: Takes a setting, a list of asteroids, and a grid
   to construct an svg with a nested set of elements built by the asteroidCircle function
-}


asteroidSvg : Setting -> List Asteroid -> Grid -> Html Msg
asteroidSvg setting asteroids ( x, y ) =
    let
        svgViewBox =
            "-50 0 " ++ (toString (x + 50)) ++ " " ++ (toString y)

        values =
            asteroidSettingValues setting asteroids

        total =
            List.length values

        indexedAsteroids =
            List.indexedMap (,) values
    in
        svg
            [ viewBox svgViewBox ]
            (List.map
                (\item -> asteroidCircle item total ( x, y ))
                indexedAsteroids
            )



{- asteroidCircle: Uses the Index value of the tuple to scale against the x
   value of the grid and the total number of elements.
   Outputs a g containing the circle, and a text element containing the asteroid value
-}


asteroidCircle : ( Int, String ) -> Int -> Grid -> Svg.Svg msg
asteroidCircle ( index, value ) total ( xGrid, yGrid ) =
    let
        xPos =
            toString <| ((toFloat index) / (toFloat total)) * (toFloat xGrid)

        yPos =
            toString <| (toFloat yGrid) / 2.0

        circleSize =
            toString <| (toFloat yGrid) / (toFloat total) * 2
    in
        g []
            [ circle [ fill "#dddddd", cx xPos, cy yPos, r circleSize ] []
            , text_ [ x xPos, y yPos, textAnchor "middle", fontSize "30%" ] [ Svg.text (value) ]
            ]
