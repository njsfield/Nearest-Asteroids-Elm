module Helpers.ViewComponents exposing (viewNavigation, viewListItems)

import Model exposing (..)
import Update exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)


viewNavigation : Setting -> Html Msg
viewNavigation setting =
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
            [ button [ onClick PreviousSetting ] [ text "<" ]
            , h2 [ class "sans-serif" ] [ text settingtext ]
            , button [ onClick NextSetting ] [ text ">" ]
            ]


viewListItems : Setting -> List Asteroid -> Html Msg
viewListItems setting asteroids =
    ul [] (List.map (viewListItem setting) asteroids)


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
