module InferringFunctionTypes exposing (..)

add a b = a + b 

sum list = 
    case list of 
        [] -> 0
        x :: xs -> x + sum xs