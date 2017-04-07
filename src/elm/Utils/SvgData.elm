module Utils.SvgData exposing (mapValuesFromSetting)

import Types exposing (..)
import Utils.FormatNumbers exposing (..)


mapValuesFromSetting : Setting -> AsteroidList -> List AsteroidSvgData
mapValuesFromSetting setting asteroids =
    case setting of
        Name ->
            nameData <| List.map .name asteroids

        MinSize ->
            scaleData kmString <| List.map .minsize asteroids

        Speed ->
            spreadData kmsString <| List.map .speed asteroids

        MissDistance ->
            spreadData kmString <| List.map .missdistance asteroids


prepData : List a -> ( List Int, Float )
prepData dataList =
    if (List.length dataList == 1) then
        ( [ 1 ], 2 )
    else
        let
            scaleBy =
                List.length dataList - 1

            indexes =
                List.range 0 scaleBy
        in
            ( indexes, toFloat scaleBy )


nameData : List Name -> List AsteroidSvgData
nameData namelist =
    let
        ( indexes, scaleBy ) =
            prepData namelist

        xs =
            List.map (\x -> toFloat x / scaleBy) indexes

        ys =
            List.map (always 0.5) indexes

        rs =
            List.map (always (1.0 / (scaleBy * 5))) indexes
    in
        List.map5 AsteroidSvgData namelist indexes xs ys rs


scaleData : (Unit -> String) -> List Unit -> List AsteroidSvgData
scaleData formatter unitlist =
    let
        unitStringList =
            List.map formatter unitlist

        ( indexes, scaleBy ) =
            prepData unitlist

        xs =
            List.map (\x -> toFloat x / scaleBy) indexes

        ys =
            List.map (always 0.5) indexes

        rs =
            normalize unitlist
                |> List.map (\x -> x * 0.05 + 0.05)
    in
        List.map5 AsteroidSvgData unitStringList indexes xs ys rs


spreadData : (Unit -> String) -> List Unit -> List AsteroidSvgData
spreadData formatter unitlist =
    let
        unitStringList =
            List.map formatter unitlist

        ( indexes, scaleBy ) =
            prepData unitlist

        xs =
            normalize unitlist

        ys =
            List.map (\x -> toFloat x / scaleBy) indexes

        rs =
            List.map (always (1.0 / (scaleBy * 5))) indexes
    in
        List.map5 AsteroidSvgData unitStringList indexes xs ys rs


normalize : List Unit -> List Unit
normalize units =
    if (List.length units == 1) then
        [ 0.5 ]
    else
        let
            min =
                Maybe.withDefault 0.0 <| List.minimum units

            max =
                Maybe.withDefault 1.0 <| List.maximum units
        in
            List.map (\x -> (x - min) / (max - min)) units
