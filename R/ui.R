#shiny application
library(shiny)
library(lab5)

shinyUI(fluidPage(

  titlePanel(title = "Geocodification"),
  sidebarLayout(
    sidebarPanel(("Type an address or a pair of numbers (coordinates)"),
      textInput("ddss","Here: ",""),textOutput("ads")),
    mainPanel("Map")
  )
 )
)
