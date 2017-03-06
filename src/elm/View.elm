module View exposing (..)

import Model exposing (..)
import Update exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)


view : Model -> Html Msg
view model =
    div [ class "tc mt5" ]
        [ viewNavigation model.setting
        , p [ class "sans-serif" ] [ text model.asteroidsErr ]
        , ul [] [ List.map (viewListItem model.setting model.asteroids) ]
        , h2 [ class "sans-serif" ] [ text model.date ]
        ]


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
        [ div [ class "flex" ]
            [ button [ onClick PreviousSetting ] [ text "<" ]
            , h2 [ class "sans-serif" ] [ text settingtext ]
            , button [ onClick NextSetting ] [ text ">" ]
            ]
        ]


viewListItem : Setting -> Asteroid -> Html Msg
viewListItem setting asteroid =
    let
        item =
            (\textinput -> li [] [ text textinput ])
    in
        case setting of
            Name ->
                item asteroid.name

            MinSize ->
                item toString <| asteroid.minsize

            Speed ->
                item asteroid.speed

            MissDistance ->
                item asteroid.missdistance
