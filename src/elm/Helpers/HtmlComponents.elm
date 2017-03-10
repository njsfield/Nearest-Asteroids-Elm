module Helpers.HtmlComponents exposing (viewNavigation)

import Model exposing (..)
import Update exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)


{- viewNaviation:
   Takes PreviousSetting (Msg), Setting (Setting) and NextSetting (Msg)
   And outputs a UI component (with flexbox styles).
-}


viewNavigation : Msg -> Setting -> Msg -> Html Msg
viewNavigation prevSettingMsg setting nextSettingMsg =
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
        div [ class "flex justify-center" ]
            [ button [ class "bn pointer bg-transparent outline-0", onClick prevSettingMsg ] [ Html.text "<" ]
            , h2 [ class "sans-serif" ] [ Html.text settingtext ]
            , button [ class "bn pointer bg-transparent outline-0", onClick nextSettingMsg ] [ Html.text ">" ]
            ]
