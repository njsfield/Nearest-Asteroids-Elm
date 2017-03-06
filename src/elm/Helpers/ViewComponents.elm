module Helpers.ViewComponents exposing (viewNavigation, viewListItems)

import Model exposing (..)
import Update exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)


{- viewNaviation:
   Takes PreviousSetting (Msg), Setting (Setting) and NextSetting (Msg)
   And outputs a UI component (with flexbox styles).
   @TODO: Refactor to assign Setting name elsewhere
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
            [ button [ class "bn pointer bg-transparent outline-0", onClick prevSettingMsg ] [ text "<" ]
            , h2 [ class "sans-serif" ] [ text settingtext ]
            , button [ class "bn pointer bg-transparent outline-0", onClick nextSettingMsg ] [ text ">" ]
            ]



{- viewListItems: (Temporary), takes a setting and list of asteroid types, outputs a unordered list
   with asteroid settings nested
-}


viewListItems : Setting -> List Asteroid -> Html Msg
viewListItems setting asteroids =
    ul [ class "pa0" ] (List.map (viewListItem setting) asteroids)



{- viewListItem: (Temporary), Takes a Setting, an Asteroid and outputs the relevant field in a list element -}


viewListItem : Setting -> Asteroid -> Html Msg
viewListItem setting asteroid =
    let
        item =
            (\textinput -> li [ class "list" ] [ text textinput ])
    in
        case setting of
            Name ->
                item asteroid.name

            MinSize ->
                item (toString <| asteroid.minsize)

            Speed ->
                item asteroid.speed

            MissDistance ->
                item asteroid.missdistance
