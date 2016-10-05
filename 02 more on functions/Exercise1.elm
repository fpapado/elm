module Exercise1 exposing (..)

import Html
import String


(~=) w1 w2 =
    if String.slice 0 1 w1 == String.slice 0 1 w2 then
        True
    else
        False


main =
    "Ele"
        ~= "Elm"
        |> toString
        |> Html.text
