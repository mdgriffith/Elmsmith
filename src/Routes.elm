
module Routes (Route (..), render) where



type Route 
      = Index
      | Blog
      | Archive
      | Post String


render : Route -> String
render route =
      case route of
        Index -> ""
        Blog -> "/blog"
        Archive -> "/archive"
        Post slug -> "/post/" ++ slug

