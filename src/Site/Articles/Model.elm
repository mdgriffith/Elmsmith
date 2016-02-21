module Articles.Model (..) where


import Routes

type alias Model =
      { title : String
      , route : Routes.Route
      , author : String
      } 