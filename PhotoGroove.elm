module PhotoGroove exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


initialModel =
    [ { url = "1.jpeg" }
    , { url = "2.jpeg" }
    , { url = "3.jpeg" }
    ]


urlPrefix =
    "http://elm-in-action.com/"


view model =
    div [ class "content" ]
        [ h1 [] [ text "Photo Groove" ]
        , div [ id "thumbnails" ] (List.map viewThumbnail model)
        ]


viewThumbnail thumbnail =
    img [ src (urlPrefix ++ thumbnail.url) ] []


main =
    view initialModel
