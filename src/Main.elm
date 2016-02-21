

import Effects exposing (Never, Effects)
import StartApp
import Task
import Signal exposing (Signal)


import Themes.Default as Site
import Site.Index





app =
  StartApp.start
    { init = (Site.init, Effects.none)
    , update = Site.update
    , view = Site.view Site.Index.view
    , inputs = Site.inputs
    }


port tasks : Signal (Task.Task Never ())
port tasks =
  app.tasks



main = app.html