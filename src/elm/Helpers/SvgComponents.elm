module Helpers.SvgComponents exposing (asteroidSvg)

import Model exposing (..)
import Update exposing (..)
import Html exposing (..)
import Helpers.ChangeSettings exposing (stringValuesFromSetting)
import Svg exposing (svg, circle, text_, text, g)
import Svg.Attributes exposing (viewBox, fill, cx, cy, r, stroke, textAnchor, x, y, fontSize)


{- asteroidSvg: Takes a setting, a list of asteroids, and a grid
   to construct an svg with a nested set of elements built by the asteroidCircle function
-}


asteroidSvg : Setting -> List Asteroid -> Grid -> Html Msg
asteroidSvg setting asteroids ( x, y ) =
    let
        svgViewBox =
            "-50 0 " ++ (toString (x + 50)) ++ " " ++ (toString y)

        values =
            stringValuesFromSetting setting asteroids

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
