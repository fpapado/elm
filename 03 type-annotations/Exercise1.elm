module Main exposing (..)

import Html


type alias Item =
    { name : String
    , qty : Int
    , freeQty : Int
    }


cart : List Item
cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    ]


discount : Int -> Int -> Item -> Item
discount minQty discNum item =
    if (item.qty >= minQty) && (item.freeQty < discNum) then
        { item
            | freeQty = discNum
        }
    else
        item


main : Html.Html msg
main =
    List.map (discount 10 3 >> discount 5 1) cart
        |> toString
        |> Html.text
