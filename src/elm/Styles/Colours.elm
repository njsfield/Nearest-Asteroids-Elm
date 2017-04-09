module Styles.Colours exposing (getPastel)

import Styles.Classes exposing (tachs)
import Color exposing (..)
import Array exposing (..)
import Maybe exposing (withDefault)


-- Types


type alias Swatches =
    Array RgbString


type alias RgbString =
    String


type alias Rgb =
    { red : Int, green : Int, blue : Int, alpha : Float }



-- buildSwatches: Make HSL swatch array to index later.


buildSwatches : Int -> Float -> Float -> Swatches
buildSwatches total s l =
    List.range 0 total
        |> List.map (\x -> x * (360 // total * 2) |> toFloat)
        |> List.map (\x -> hsl (degrees x) s l)
        |> List.map (\x -> rgbToString <| toRgb x)
        |> fromList



-- rgbToString: Formatted for svg elements.


rgbToString : Rgb -> String
rgbToString { red, blue, green } =
    "rgb("
        ++ toString red
        ++ ","
        ++ toString blue
        ++ ","
        ++ toString green
        ++ ")"



-- pastelSwatches: 14 soft, low saturation colours.


pastelSwatches : Swatches
pastelSwatches =
    buildSwatches 14 0.7 0.8



-- getPastel: Retrieve rgb colour from pastelSwatches array.


getPastel : Int -> String
getPastel index =
    withDefault "rgb(100,100,100)" <| get index pastelSwatches
