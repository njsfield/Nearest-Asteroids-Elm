module Views.Svg exposing (asteroidSvg)

import Types exposing (..)
import Update exposing (..)
import Html exposing (..)
import Svg exposing (..)
import Svg.Attributes as Attrs exposing (..)
import Styles.Colours exposing (getPastel)
import Styles.Classes exposing (tachs)
import Utils.SvgData exposing (..)


asteroidSvg : Setting -> List Asteroid -> Orientation -> Html Msg
asteroidSvg setting asteroids orientation =
    let
        ( x, y ) =
            case orientation of
                Landscape ->
                    ( 300, 100 )

                Portrait ->
                    ( 200, 275 )

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


orientationMap : a -> a -> Orientation -> ( a, a )
orientationMap a b orientation =
    case orientation of
        Landscape ->
            ( a, b )

        Portrait ->
            ( b, a )


dataGroup : AsteroidSvgData -> Grid -> Orientation -> Svg.Svg msg
dataGroup { display, index, x, y, r } ( w, h ) orientation =
    let
        ( a, b ) =
            orientationMap w h orientation

        xScaled =
            toString <| x * toFloat a

        yScaled =
            toString <| y * toFloat b

        rScaled =
            toString <| round <| r * toFloat a

        coords =
            orientationMap xScaled yScaled orientation
    in
        g [ Attrs.class tachs.svgasteroid ]
            [ svgCircle index coords rScaled
            , svgText coords display
            ]


svgCircle : Int -> Coord -> String -> Svg.Svg msg
svgCircle index ( a, b ) rad =
    circle [ fill <| getPastel index, cx a, cy b, r rad ] []


svgText : Coord -> String -> Svg.Svg msg
svgText ( a, b ) displaytext =
    text_
        [ x a
        , y b
        , textAnchor "middle"
        , Attrs.class tachs.svgtext
        , fill tachs.svgtextcol
        ]
        [ Svg.text (displaytext) ]
