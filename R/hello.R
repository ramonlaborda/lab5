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


  url <- URLencode("https://maps.googleapis.com/maps/api/geocode/json?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA&key=AIzaSyDF_HnxHjHczjpjdoJk5wdhDgvqT1o29RE")
  dataUrl <- getURL(url)
  dataUrljson <- fromJSON(dataUrl)
  return(dataUrljson)
}
#do i need to add an API?? does it has to be mine?
