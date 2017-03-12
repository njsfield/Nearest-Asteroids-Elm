module Views.Nav exposing (navigation)

import Model exposing (..)
import Update exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Styles.Classes exposing (tachs)


{- viewNaviation:
   Takes PreviousSetting (Msg), Setting (Setting) and NextSetting (Msg)
   And outputs a UI component (with flexbox styles).
-}


navigation : Msg -> Setting -> Msg -> Html Msg
navigation prevSettingMsg setting nextSettingMsg =
    let
        settingtext =
            case setting of
                Name ->
                    "Name"

                MinSize ->
                    "Min Size"

                Speed ->
                    "Speed"

                MissDistance ->
                    "Miss Distance"
    in
        div [ class tachs.nav ]
            [ button [ class tachs.navbutton, onClick prevSettingMsg ] [ Html.text "<" ]
            , h2 [ class tachs.navtext ] [ Html.text settingtext ]
            , button [ class tachs.navbutton, onClick nextSettingMsg ] [ Html.text ">" ]
            ]
