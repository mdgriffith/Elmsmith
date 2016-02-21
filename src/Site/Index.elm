module Site.Index (..) where


import Markdown
import Routes


import Task

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Html.Lazy exposing (..)
import Signal exposing (Signal, Address)
import Effects exposing (Never)


model = { route = Routes.Index
        }


view address siteModel = 
    [ Markdown.toHtml
  """ 

# Data First
This is more of a thought on moving from a dynamic language to a static language, but in Haskell the structure of your data is mostly stated in data declarations and type signatures. In Python it's mostly implied by the code.  

My first thought with a Haskell function is "What does the data look like?  This function takes a \\____ and returns a \\_____ ?", while in Python my first thought is "What does the code say?"

Thinking 'data first' improved my coding, even when coming back to Python.  I more often recognize when the structure of my data changes for no real reason other than it was easy and I was very 'zoomed in' on the problem at the time.  

Limiting changes in data structure also makes the code less complex and easier to understand.


  """
  , a [ href (Routes.render model.route) ] [ text "Here's a typesafe route!" ]
  ]



--main =
--  page.html


--port tasks : Signal (Task.Task Never ())
--port tasks =
--  page.tasks
