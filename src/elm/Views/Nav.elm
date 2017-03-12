module Views.Nav exposing (navigation)

import Model exposing (..)
import Update exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)


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
        div [ class "flex justify-center" ]
            [ button [ class "bn pointer bg-transparent outline-0 washed-blue pa4", onClick prevSettingMsg ] [ Html.text "<" ]
            , h2 [ class "sans-serif washed-blue tracked-mega fw3" ] [ Html.text settingtext ]
            , button [ class "bn pointer bg-transparent outline-0 washed-blue pa4", onClick nextSettingMsg ] [ Html.text ">" ]
            ]
