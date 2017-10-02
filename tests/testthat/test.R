#testing

library(testthat)
library(lab5)

#testing the inputs and outputs of our functions
test_that("geocodification good output", {
  expect_true(is.data.frame(geocodification("Linköping")))
})


#geocodification

test_that("geocodification(address) works",{
  #address
  expect_equal(geocodification("Linköping"),
               data.frame(address ="Linköping, Sweden",
                          latitude=58.41081,
                          longitude = 15.62137,
                          stringsAsFactors = FALSE),
               tolerance=0.00001)
  #coordinates
  expect_equal(geocodification("40.41678, -3.70379"),
               data.frame(address ="Plaza Puerta del Sol, 11, 28013 Madrid, Spain",
                          latitude=40.41678,
                          longitude = -3.70379,
                          stringsAsFactors = FALSE),
               tolerance=0.00001)
  #address ERROR
  expect_equal(geocodification("12.5asadsd"),
               data.frame(address ="ERROR",
                          latitude=0,
                          longitude = 0,
                          stringsAsFactors = FALSE),
               tolerance=0.00001)

})
