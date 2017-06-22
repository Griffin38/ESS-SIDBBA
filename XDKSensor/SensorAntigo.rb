require 'net/http'
require 'uri'
require 'json'
require 'date'

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
puts "antes "
  params = {
 "date" => DateTime.now
  }

puts DateTime.now.to_date
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






