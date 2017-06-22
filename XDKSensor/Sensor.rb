require 'uri'
require 'net/http'
require 'json'

urlU = URI("http://localhost:3000/users")
urlS = URI("http://localhost:3000/posts")
def simula()

@latitude = rand(-90.000000000...90.000000000)
@longitude = rand(-180.000000000...180.000000000)

   sensor = Thread.new {
   loop {
paramsS = {
  "temperatura" => rand(-20..60),
  "luminosidade" =>rand(0.045..188000),
  "pressao" => rand(300..1100),
  "humidade" => rand(0..100),
  "latitude" => @latitude,
  "longitude" => @longitude,
 #"date" => Date.now.to_s,
  "time" => Time.now
  }
http = Net::HTTP.new(urlS.host, urlS.port)
request = Net::HTTP::Post.new(urlS)
request["content-type"] = 'application/json'
request["cache-control"] = 'no-cache'
request.body = paramsS.to_json
response = http.request(request)
   sleep(30)
  
   
    }
   }   



     
puts "PARA TERMINAR ESCREVA: CLOSE"
if gets.chomp == "CLOSE" || gets.chomp == "close"
	Thread.kill(sensor) 

end

end



puts "O que deseja fazer? (login/registo)"

case gets.chomp
when "login"
	puts "Introduza as suas credenciais!"
	puts "Username:"
	username = gets.chomp
	puts "Password:"
	password = gets.chomp
	#get
paramsU = { :name => username, :pwd => password }
urlU.query = URI.encode_www_form(paramsU)

res = Net::HTTP.get_response(urlU)
puts res.body if res.is_a?(Net::HTTPSuccess)

		simula()
		

when "registo"
	puts "Introduza as credenciais desejadas:"
	puts "Username:"
	username = gets.chomp
	puts "Password:"
	password = gets.chomp
 paramsR = {
  "name" => username,
  "pwd" => password,
  "estado" => true
  }
http = Net::HTTP.new(urlU.host, urlU.port)
request = Net::HTTP::Post.new(urlU)
request["content-type"] = 'application/json'
request["cache-control"] = 'no-cache'
request.body = paramsR.to_json
response = http.request(request)
puts response.body if response.is_a?(Net::HTTPSuccess)
simula()

else puts "Opcao invalida!"

end






