require 'net/http'
require 'uri'
require 'json'

url = URI("http://localhost:3000/users")

def simula()

@latitude = rand(-90.000000000...90.000000000)
@longitude = rand(-180.000000000...180.000000000)
   sensor = Thread.new {
   loop {
       
=begin 
  params = {
  "temperatura" => rand(-20..60).to_s,
  "luminosidade" =>rand(0.045..188000).to_s,
  "pressao" => rand(300..1100).to_s,
  "humidade" => rand(0..100).to_s,
  "latitude" => @latitude.to_s,
  "longitude" => @longitude.to_s,
 "date" => Date.now.to_s,
  "time" => Time.now.to_s
        }
        puts "teste"

http.use_ssl = true
request = Net::HTTP::Post.new(uri.path, json_headers)
request.body = params.to_json

response = http.request(request)
=end
  params = {
  "name" => "verdadeiro",
  "pwd" => "1234",
  "estado" => true
  }


http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["cache-control"] = 'no-cache'
request.body = params
response = http.request(request)
puts response.read_body
sleep(120)
    }
   }   
   



     
puts "PARA TERMINAR ESCREVA: CLOSE"
if gets.chomp == "CLOSE" || gets.chomp == "close"
	Thread.kill(sensor) 
    
end

end

#login?

simula()






