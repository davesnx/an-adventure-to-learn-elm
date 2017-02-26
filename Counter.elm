import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

main : Program Never Model Msg
main =
  Html.beginnerProgram
    { model = model
    , view = view
    , update = update
    }

-- MODEL

type alias Model = Int

model : Model
model =
  0

-- UPDATE

type Msg =
  Increment Int
  | Decrement Int

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment value ->
      model + value
    Decrement value ->
      model - value

-- VIEW

view : Model -> Html Msg
view model =
  div []
    [ button [ onClick (Decrement 10) ] [ text "-" ]
    , div [] [ text (toString model) ]
    , button [ onClick (Increment 10) ] [ text "+" ]
    ]