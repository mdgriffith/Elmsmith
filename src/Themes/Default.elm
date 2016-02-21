module Themes.Default (init, update, view, inputs) where

import Effects exposing (Never, Effects)
import StartApp
import Task

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Html.Lazy exposing (..)
import Signal exposing (Signal, Address)


type alias Model =
            { title: String }

type Action = NoOp


view internal address model =
      div [] 
        ( [ h1 [] [ text "This Header is Part of the Base Theme" ]
        

        ] ++ (internal address model))


init = 
  { title = "Static Site Test!" }

update : Action -> Model -> (Model, Effects.Effects Action)
update action model = (model, Effects.none)

inputs = []



