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



{- builSwatches:
   takes a total number of swatches to be produced,
   then uses saturation and lightness values to generate
   a unique array of "rgb(x,x,x)" values
-}


buildSwatches : Int -> Float -> Float -> Swatches
buildSwatches total s l =
    List.range 0 total
        |> List.map (\x -> x * (360 // total) |> toFloat)
        |> List.map (\x -> hsl (degrees x) s l)
        |> List.map (\x -> rgbToString <| toRgb x)
        |> fromList



{- rgbToString:
   Helper function to take an Rgb collection
   and output a html friendly string
-}


rgbToString : Rgb -> String
rgbToString { red, blue, green } =
    "rgb("
        ++ toString red
        ++ ","
        ++ toString blue
        ++ ","
        ++ toString green
        ++ ")"



{- pastelSwatches:
   calls buildSwatches to produce
   a pastel range of colours
-}


pastelSwatches : Swatches
pastelSwatches =
    buildSwatches 14 0.7 0.9



{- getPastel:
   Takes an index integer to return
   the associated pastel array item
-}


getPastel : Int -> String
getPastel index =
    withDefault "rgb(100,100,100)" <| get index pastelSwatches
