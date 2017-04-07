module Utils.FormatDate exposing (formatDate)

import Date exposing (Date)


formatDate : Date.Date -> String
formatDate rawdate =
    (toString <| Date.year rawdate)
        ++ "-"
        ++ (monthToNumString (Date.month rawdate))
        ++ "-"
        ++ (dayToNumString (Date.day rawdate))


dayToNumString : Int -> String
dayToNumString day =
    if (day < 10) then
        "0" ++ toString day
    else
        toString day


monthToNumString : Date.Month -> String
monthToNumString month =
    case month of
        Date.Jan ->
            "01"

        Date.Feb ->
            "02"

        Date.Mar ->
            "03"

        Date.Apr ->
            "04"

        Date.May ->
            "05"

        Date.Jun ->
            "06"

        Date.Jul ->
            "07"

        Date.Aug ->
            "08"

        Date.Sep ->
            "09"

        Date.Oct ->
            "10"

        Date.Nov ->
            "11"

        Date.Dec ->
            "12"
