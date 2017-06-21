require 'net/http'

url = 'localhost' # ACME boomerang
resp = Net::HTTP.get_response(URI.parse(url))

resp_text = resp.body
puts resp_text