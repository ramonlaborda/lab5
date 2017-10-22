#' Google Geocoding API connector
#'
#' Passes the function parameter \code{address} as a parameter to the API via URL.
#' Then it returns the output of the request into a formatted dataframe with the geocoding information.
#'
#'
#' @param address A character vector with an address or some coordinates (latitude and longitude)
#'
#' @return A data.frame containing the resulting \code{address}, \code{latitude} and \code{longitud}
#'
#' @import RCurl rjson testthat shiny utils devtools
#'
#' @references Google Geocoding API - \url{https://developers.google.com/maps/documentation/geocoding/intro}
#'
#' @export geocodification
#' @name geocodification
library(RCurl)
library(rjson)
library(testthat)
library(shiny)
geocodification <- function(address){
  url <- URLencode(paste("https://maps.google.com/maps/api/geocode/json?address=",address,sep=""))
  dataUrl <- getURL(url)
  dataUrljson <- fromJSON(dataUrl)
  if(dataUrljson$status=="OK"){
    theaddress <- dataUrljson$results[[1]]$formatted_address
    lat<- dataUrljson$results[[1]]$geometry$location$lat
    long <- dataUrljson$results[[1]]$geometry$location$lng
  }else{
    theaddress <- "ERROR"
    lat <- 0
    long <- 0
  }
  result <- data.frame(address=theaddress, latitude=lat, longitud=long, stringsAsFactors = FALSE)
  return(result)
}
