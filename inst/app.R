#' Google Geocoding API connector aplication
#'
#' Passes the function parameter \code{address} as a parameter to the API via URL.
#' Then it returns the output of the request into a formatted dataframe with the geocoding information.
#'
#'
#' @param address A character vector with an address or some coordinates (latitude and longitude)
#'
#' @return A shiny app
#'
#' @import RCurl rjson testthat shiny geocodification
#'
#' @references Google Geocoding API  - \url{https://developers.google.com/maps/documentation/geocoding/intro}
#'@name shinyapp
#'
library(shiny)
ui <- fluidPage(
  titlePanel(title = "Geocodification"),
                sidebarLayout(
                  sidebarPanel(
                    ("Type an address or a pair of numbers (coordinates)"),
                               textInput("ddss","Here: ","")),

                  mainPanel(
                    textOutput("ads"),
                    textOutput("lat"),
                    textOutput("lon")
                    )
                )
  )
server <- function(input, output) {
  output$ads <- renderPrint(geocodification(input$ddss)[1])
  output$lat <- renderPrint(geocodification(input$ddss)[2])
  output$lon <- renderPrint(geocodification(input$ddss)[3])
}
shinyApp(ui = ui, server = server)
