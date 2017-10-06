#' Google Geocoding API connector app
#'
#' @description Loops over the vector of addresses and/or coordinates, passes each one of them as a parameter
#' to an internal function that connects to the \code{Google Geocoding API} via URL and gets the output. Then it
#' returns the output of the request into a formatted dataframe with the geocoding information.
#'
#' @param address or some coordinates (latitude and longitude)
#'
#' @return A shiny app containing the resulting \code{longitude/s}, \code{latitude/s} and \code{address/es}
#'@name shinyappserver
#' @references
#' Google Geocoding API - \url{https://developers.google.com/maps/documentation/geocoding/intro}
#'

shinyServer(
  function(input,output){
    output$ads <- renderPrint(geocodification(input$ddss)[1])
    output$lat <- renderPrint(geocodification(input$ddss)[2])
    output$lon <- renderPrint(geocodification(input$ddss)[3])
  }
)
