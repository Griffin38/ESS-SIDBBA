require 'net/http'
require 'uri'

url = URI('localhost')

def simula()


@latitude = rand(-90.000000000...90.000000000)
@longitude = rand(-180.000000000...180.000000000)
   sensor = Thread.new {
   loop {
   sleep(30)
  time = Time.now.getutc
  params = {
  temperatura => rand(-20..60),
  luminosidade =>rand(0.045..188000),
  pressao => rand(300..1100),
  humidade => rand(0..100),
  latitude => @latitude,
  longitude => @longitude,
  datetime => DateTime.now
        }.to_json
resp = Net::HTTP.post(url, params,"Content-Type" => "application/json")
    }
   }   
   



     
puts "PARA TERMINAR ESCREVA: CLOSE"
if gets.chomp == "CLOSE" || gets.chomp == "close"
	Thread.kill(sensor) 
    
end

end



simula()






