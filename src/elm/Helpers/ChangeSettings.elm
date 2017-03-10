module Helpers.ChangeSettings exposing (nextSetting, previousSetting, stringValuesFromSetting)

import Model exposing (..)


-- nextSetting: Called by NextSetting Msg in Update to increment setting


nextSetting : Setting -> Setting
nextSetting setting =
    case setting of
        Name ->
            MinSize

        MinSize ->
            Speed

        Speed ->
            MissDistance

        MissDistance ->
            Name



-- previousSetting: Called by PreviousSetting Msg in Update to decrement setting


previousSetting : Setting -> Setting
previousSetting setting =
    case setting of
        Name ->
            MissDistance

        MinSize ->
            Name

        Speed ->
            MinSize

        MissDistance ->
            Speed



{- stringValuesFromSetting: Takes a Setting and list of Asteroids.
   Outputs string formatted values based on setting
-}


stringValuesFromSetting : Setting -> AsteroidList -> List String
stringValuesFromSetting setting asteroids =
    case setting of
        Name ->
            List.map .name asteroids

        MinSize ->
            List.map (\x -> x.minsize |> toString) asteroids

        Speed ->
            List.map (\x -> x.speed |> toString) asteroids

        MissDistance ->
            List.map (\x -> x.missdistance |> toString) asteroids
