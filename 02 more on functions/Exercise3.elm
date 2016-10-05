module Exercise3 exposing (..)

import Html
import String
import List


wordCount =
    String.words >> List.length


main =
    wordCount "This is an example sentence."
        |> toString
        |> Html.text
