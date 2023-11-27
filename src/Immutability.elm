module Immutability exposing (..)

import Html exposing (Html, text)

add : Int -> Int -> Int
add a b =
    let sum = a + b
        sum = sum + 1
    in sum

main : Html msg
main =
    text (String.fromInt (add 1 2))
    