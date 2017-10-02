# geocodification
#
# This is the code to read from an API the adress or
# coordinates using Google Maps
#
# A request for Google Maps Geocoding must be like:
# https://maps.googleapis.com/maps/api/geocode/outputFormat?parameters
# where outputFormat has to be JSON or xml and the parameter an address or location
# we will use JSON to convert R objects into JSON objects and vice-versa
# we will use RCurl Functions to percent-encode or decode characters in URLs.

geocodification <- function(address){
  library(rjson)
  library(RCurl)
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
  result <- data.frame(address=theaddress, latitude=lat, longitud=long)
  return(result)
}
#do i need to add an API?? does it has to be mine?
