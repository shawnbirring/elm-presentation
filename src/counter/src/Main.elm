module Main exposing (..)

import Browser
import Html exposing (Html, text, button, div)
import Html.Events exposing (onClick)
import Html.Attributes exposing (style)

-- MAIN
main : Program () Model Msg
main = 
    Browser.sandbox { init = init, update = update, view = view }

-- MODEL 

type alias Model = {
    count : Int
    }

init : Model
init = {
    count = 0 
    }

-- UPDATE
type Msg = Increment | Decrement | RESET

update : Msg -> Model -> Model
update msg model =
    case msg of 
        Increment ->
            { model | count = model.count + 1 }
        Decrement ->
            { model | count = model.count - 1 }
        RESET ->
            { model | count = 0 }

-- VIEW
view : Model -> Html Msg
view model = 
    -- make a center div 
    div [ style "display" "flex", style "flex-direction" "column", style "justify-content" "center", style "align-items" "center", style "height" "100vh", style "width" "100vw", style "font-size" "100px" ] [
        -- big title that says my counter app
        text "My Counter App",
        div [ style "display" "flex", style "justify-content" "center", style "align-items" "center" ] [
            button [ onClick Increment, style "font-size" "30px", style "padding" "50px", style "margin" "50px" ] [ text "+" ],
            let color = if model.count > 0 then "green" else if model.count == 0 then "black" else "red" in
            div [ style "color" color ] [ text (String.fromInt model.count) ],
            button [ onClick Decrement, style "font-size" "30px", style "padding" "50px", style "margin" "50px" ] [ text "-" ]
        ],
        button [ onClick RESET, style "font-size" "30px", style "padding" "50px", style "margin" "50px" ] [ text "RESET" ]
    ]