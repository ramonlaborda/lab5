#shiny application
library(shiny)
library(testthat)
shinyUI(fluidPage(

  titlePanel(title = "Geocodification"),
  sidebarLayout(
    sidebarPanel(("Type an address or a pair of numbers (coordinates)"),
      textInput("ddss","Here: ",""),textOutput("ads"),textOutput("lat"),textOutput("lon")),
    mainPanel("")
  )
 )
)
