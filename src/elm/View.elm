module View exposing (..)

import Model exposing (..)
import Update exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)


view : Model -> Html Msg
view model =
    div [ class "tc mt5" ]
        [ [ div [ class "flex" ]
                [ button [ onClick PreviousSetting ] [ text "<" ]
                , h2 [ class "sans-serif" ]
                    [ text model.settingtext ]
                    button
                    [ onClick NextSetting ]
                    [ text ">" ]
                ]
          ]
        , p [ class "sans-serif" ] [ text model.asteroidsErr ]
        , ul [] [ List.map viewListItem model.asteroids ]
        , h2 [ class "sans-serif" ] [ text model.date ]
        ]


viewListItem : Asteroid -> Html Msg
viewListItem { display } =
    li [] [ text display ]
