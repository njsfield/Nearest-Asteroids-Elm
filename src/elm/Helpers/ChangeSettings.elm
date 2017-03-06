module Helpers.ChangeSettings exposing (incrementSetting, decrementSetting)

import Model exposing (..)


incrementSetting : Setting -> Setting
incrementSetting setting =
    case setting of
        Name ->
            MinSize

        MinSize ->
            Speed

        Speed ->
            MissDistance

        MissDistance ->
            Name


decrementSetting : Setting -> Setting
decrementSetting setting =
    case setting of
        Name ->
            MissDistance

        MinSize ->
            Name

        Speed ->
            MinSize

        MissDistance ->
            Speed
