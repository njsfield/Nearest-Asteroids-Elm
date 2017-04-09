module Styles.Classes exposing (..)

import Types exposing (..)


-- tachs: Tachyon classes composed for each HTML component.


tachs =
    { main = "tc w-100 vh-100 flex flex-column items-center justify-center bg-dark-blue"
    , svgcontainer = "tc dib w-80 pv-5 mw8 relative minmax"
    , svg = "ma-10 overflow-visible"
    , date = "sans-serif washed-blue tracked-mega fw3"
    , svgtext = "f7 sans-serif"
    , svgtextcol = "rgb(130,130,130)"
    , svgasteroid = "hovergrow"
    , nav = "flex justify-center"
    , navbutton = "bn pointer bg-transparent outline-0 washed-blue pa4 pb0 pt0"
    , navtext = "sans-serif w6 washed-blue tracked-mega pb2 fw3"
    , error = "sans-serif red"
    , loading = "sans-serif washed-blue relative"
    , loadingdots = "loadingdots"
    }



-- scaleSwitch: hide scale if Name displayed in view


scaleSwitch : Setting -> String
scaleSwitch setting =
    case setting of
        Name ->
            " scaleoff"

        _ ->
            " scaleon"
