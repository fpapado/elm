module Exercise2 exposing (..)

import Html
import String


upIfLongerThan10 word =
    if String.length word > 10 then
        String.toUpper word
    else
        word


main =
    let
        word =
            "foo bar"
    in
        upIfLongerThan10 word
            ++ " - name length: "
            ++ toString (String.length word)
            |> Html.text
