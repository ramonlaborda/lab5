library(shiny)
library(lab5)

shinyServer(
  function(input,output){
    output$ads <- renderPrint(geocodification(input$ddss))

  }
)
