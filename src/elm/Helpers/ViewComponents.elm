module Helpers.ViewComponents exposing (viewNavigation, asteroidSvg)

import Model exposing (..)
import Svg exposing (svg, circle, text_, text, g)
import Svg.Attributes exposing (viewBox, fill, cx, cy, r, stroke, textAnchor, x, y, fontSize)


-- import Svg.Attributes exposing (..)

import Update exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)


{- viewNaviation:
   Takes PreviousSetting (Msg), Setting (Setting) and NextSetting (Msg)
   And outputs a UI component (with flexbox styles).
   @TODO: Refactor to assign Setting name elsewhere
-}


viewNavigation : Msg -> Setting -> Msg -> Html Msg
viewNavigation prevSettingMsg setting nextSettingMsg =
    let
        settingtext =
            case setting of
                Name ->
                    "Name"

                MinSize ->
                    "Min Size"

                Speed ->
                    "Speed"

                MissDistance ->
                    "Miss Distance"
    in
        div [ class "flex justify-center" ]
            [ button [ class "bn pointer bg-transparent outline-0", onClick prevSettingMsg ] [ Html.text "<" ]
            , h2 [ class "sans-serif" ] [ Html.text settingtext ]
            , button [ class "bn pointer bg-transparent outline-0", onClick nextSettingMsg ] [ Html.text ">" ]
            ]



-- Returns List of values based on aetting


asteroidSettingValues : Setting -> AsteroidList -> List String
asteroidSettingValues setting asteroids =
    case setting of
        Name ->
            List.map .name asteroids

        MinSize ->
            List.map .minsize asteroids
                |> List.map toString

        Speed ->
            List.map .speed asteroids
                |> List.map toString

        MissDistance ->
            List.map .missdistance asteroids
                |> List.map toString



-- x = 300, y = 100


asteroidSvg : Setting -> List Asteroid -> Grid -> Html Msg
asteroidSvg setting asteroids ( x, y ) =
    let
        grid =
            ( x, y )

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
                (\item -> asteroidCircle item total grid)
                indexedAsteroids
            )


asteroidCircle : ( Int, String ) -> Int -> Grid -> Svg.Svg msg
asteroidCircle ( index, value ) total ( xGrid, yGrid ) =
    let
        xPos =
            toString (((toFloat index) / (toFloat total)) * (toFloat xGrid))

        yPos =
            toString ((toFloat yGrid) / 2.0)

        circleSize =
            toString ((toFloat yGrid) / (toFloat total) * 2)
    in
        g []
            [ circle [ fill "#dddddd", cx xPos, cy yPos, r circleSize ] []
            , text_ [ x xPos, y yPos, textAnchor "middle", fontSize "30%" ] [ Svg.text (value) ]
            ]
