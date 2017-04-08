module Utils.ChangeSettings exposing (nextSetting, previousSetting)

import Types exposing (..)


-- nextSetting: Cycles next setting for update.


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



-- previousSetting: Cycles previous setting for update.


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
