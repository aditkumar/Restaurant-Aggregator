require 'net/http'
require 'open-uri'
require 'json'

key = 'AIzaSyBdSXLAgNqHtBekJWniLbXCltY3NDTHG64'
# call = "https://maps.googleapis.com/maps/api/place/textsearch/json?query=restaurants+in+New+York&sensor=true&key="
# call += key



# response = open(call)
# response.each_line{|line| puts line}

#Masseria ID: d13707502a3c14e15c6795c720fd496a55978fa0


call = "https://maps.googleapis.com/maps/api/place/details/json?sensor=false"
reference = "&reference=" + "CqQBkwAAAEa3UgidMw-C4eqBjO4cWfZoebOqgwpkMslvalFsHSCSjWEp_4emcBwLuz0ZEeTA2CSGOwHgS9RssAjj5-Hobg53xj-voqw3QGudg9b5f7RimJuRxHBysmBm8vac8EOZncVRD7dhBPel9AhEuNtLmAYvHAA4H7qnCGzodxdDAopBvgcri97VF83PNq9fm2JA4CvKQIrrTtn80E7uv5oasB0SEPgeYN4r-x0M21CoO5JDTJMaFOcTJV2ugjzpu-nJwjzPPvGLs5vB"
call += reference
call += "&key=" + key


j = JSON.parse(open(call).read)["result"]
# puts response
puts j["rating"]