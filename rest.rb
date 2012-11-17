require 'net/http'
require 'URI'

key = 'AIzaSyBdSXLAgNqHtBekJWniLbXCltY3NDTHG64'
call = "https://maps.googleapis.com/maps/api/place/textsearch/xml?query=restaurants+in+New+York&sensor=true&key="
call += key
uri = URI.parse(call)



response = Net::HTTP.get_response(uri)

puts response

