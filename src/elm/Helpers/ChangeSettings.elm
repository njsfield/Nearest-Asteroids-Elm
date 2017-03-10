module Helpers.ChangeSettings exposing (nextSetting, previousSetting)

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
