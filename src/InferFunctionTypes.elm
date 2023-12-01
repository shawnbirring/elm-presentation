module InferFunctionTypes exposing (..)

-- same thing as in the other file but without type annotations

add x y =
    x + y

zip list1 list2 =
    case ( list1, list2 ) of
        ( x :: xs, y :: ys ) -> ( x, y ) :: zip xs ys
        (_, _) -> []

drop n list =
    if n <= 0 then
        list
    else
        case list of
            [] -> []
            _ :: xs -> drop (n - 1) xs