module Styles.Colours exposing (getPastel)

import Styles.Classes exposing (tachs)
import Color exposing (..)
import Array exposing (..)
import Maybe exposing (withDefault)


type alias Swatches =
    Array RgbString


type alias RgbString =
    String


type alias Rgb =
    { red : Int, green : Int, blue : Int, alpha : Float }


buildSwatches : Int -> Float -> Float -> Swatches
buildSwatches total s l =
    List.range 0 total
        |> List.map (\x -> x * (360 // total) |> toFloat)
        |> List.map (\x -> hsl (degrees x) s l)
        |> List.map (\x -> rgbToString <| toRgb x)
        |> fromList


rgbToString : Rgb -> String
rgbToString { red, blue, green } =
    "rgb("
        ++ toString red
        ++ ","
        ++ toString blue
        ++ ","
        ++ toString green
        ++ ")"


pastelSwatches : Swatches
pastelSwatches =
    buildSwatches 14 0.7 0.9


getPastel : Int -> String
getPastel index =
    withDefault "rgb(100,100,100)" <| get index pastelSwatches
