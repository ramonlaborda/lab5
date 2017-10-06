library(shiny)
library(testthat)
shinyServer(
  function(input,output){
    output$ads <- renderPrint(geocodification(input$ddss)[1])
    output$lat <- renderPrint(geocodification(input$ddss)[2])
    output$lon <- renderPrint(geocodification(input$ddss)[3])
  }
)
