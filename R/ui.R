#' Google Geocoding API connector aplication ui
#'
#' Passes the function parameter \code{address} as a parameter to the API via URL.
#' Then it returns the output of the request into a formatted dataframe with the geocoding information.
#'
#'
#' @param address A character vector with an address or some coordinates (latitude and longitude)
#'
#' @return A shiny app
#'
#' @references Google Geocoding API  - \url{https://developers.google.com/maps/documentation/geocoding/intro}
#'@name shinyapp
#'

shinyUI(fluidPage(

  titlePanel(title = "Geocodification"),
  sidebarLayout(
    sidebarPanel(("Type an address or a pair of numbers (coordinates)"),
      textInput("ddss","Here: ",""),textOutput("ads"),textOutput("lat"),textOutput("lon")),
    mainPanel("")
  )
 )
)
