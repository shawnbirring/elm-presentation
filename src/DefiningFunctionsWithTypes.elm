module DefiningFunctionsWithTypes exposing (..)

add : Int -> Int -> Int
add x y =
    x + y

zip : List a -> List b -> List ( a, b )
zip list1 list2 =
    case ( list1, list2 ) of
        ( x :: xs, y :: ys ) -> ( x, y ) :: zip xs ys
        ( _, _ ) -> []

drop : Int -> List a -> List a
drop n list =
    if n <= 0 then
        list
    else
        case list of
            [] -> []
            _ :: xs -> drop (n - 1) xs