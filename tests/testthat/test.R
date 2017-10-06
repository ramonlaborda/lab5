#testing

library(testthat)
library(lab5)
library(shiny)

#testing the inputs and outputs of our functions
test_that("geocodification good output", {
  expect_true(is.data.frame(geocodification("Linköping")))
})


#geocodification

test_that("geocodification(address) works",{
  #address
  expect_equal(geocodification("Linköping"),
               data.frame(address = "Linköping, Sweden",
                          latitude = 58.41081,
                          longitud = 15.62137,stringsAsFactors = FALSE),tolerance=0.001)
  #coordinates
  expect_equal(geocodification("58.41081, 15.62137"),
               data.frame(address = "Storgatan 48, 582 23 Linköping, Sweden",
                          latitude = 58.41081,
                          longitud= 15.62137,stringsAsFactors = FALSE),tolerance=0.0001)
  #address ERROR
  expect_equal(geocodification("qwertyuiop1234"),
               data.frame(address = "ERROR",
                          latitude = 0,
                          longitud = 0,stringsAsFactors = FALSE),tolerance=0.0001)

})
