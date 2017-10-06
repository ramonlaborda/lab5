library(shiny)
library(lab5)
library(testthat)
shinyServer(
  function(input,output){
    output$ads <- renderPrint(lab5::geocodification(input$ddss)[1])
    output$lat <- renderPrint(lab5::geocodification(input$ddss)[2])
    output$lon <- renderPrint(lab5::geocodification(input$ddss)[3])
  }
)
