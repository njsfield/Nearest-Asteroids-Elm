module Utils.ChangeSettings exposing (nextSetting, previousSetting)

import Types exposing (..)


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
