module ImmutabilityErr exposing (..)

import Html exposing (Html, text)

sum_plus_one : Int -> Int -> Int
sum_plus_one a b =
    let sum = a + b
        sum = sum + 1
    in sum

main : Html msg
main =
    text (String.fromInt (sum_plus_one 1 2))
