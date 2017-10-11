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
library(shiny)
ui <- fluidPage(titlePanel(title = "Geocodification"),
                sidebarLayout(
                  sidebarPanel(("Type an address or a pair of numbers (coordinates)"),
                               textInput("ddss","Here: ","")),
                  mainPanel(textOutput("ads"),textOutput("lat"),textOutput("lon"))
                ))
server <- function(input, output) {
  a <- renderPrint(geocodification(input$ddss)[1])
  b <- renderPrint(geocodification(input$ddss)[2])
  c <- renderPrint(geocodification(input$ddss)[3])
  output$ads <- a
  output$lat <- b
  output$lon <- c
}
shinyApp(ui = ui, server = server)
