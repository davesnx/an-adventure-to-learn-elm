module App exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

type alias Todo =
  { name: String
  , completed: Bool
  }

type alias Model =
  List Todo

todos : Model
todos =
  [ { name = "David", completed = True }
  , { name = "Sancho", completed = False }
  ]

type Msg
    = AddTodo Todo
    | Clear

update : Msg -> Model -> Model
update msg model =
  case msg of
    AddTodo todo ->
      todo :: model

    Clear ->
      todos

view : Model -> Html Msg
view model =
  div [ class "lola" ]
    [ button
      [ onClick
        (AddTodo { name = "cosas", completed = False })
      ] [ text "AddTodo" ]
    , h3 [] [ text (toString model) ]
    ]

main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = todos
        , view = view
        , update = update
        }