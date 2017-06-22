require 'uri'
require 'net/http'
require 'json'
require 'date'

urlU = URI("http://localhost:3000/users")


def simula(idU)
@id = idU
@latitude = rand(-90.000000000...90.000000000)
@longitude = rand(-180.000000000...180.000000000)

   sensor = Thread.new {
   loop {
     #:user_id, :Sensor, :Value, :Latitude, :Longitude, :Date, :Time

  #sensores 
  temperatura =rand(-20..60)
  luminosidade =rand(0.045..188000)
  pressao = rand(300..1100)
  humidade = rand(0..100)

  #parametros
 
paramsT = {
  "user_id" => @id,
 "Sensor" =>  "Temperatura",
 "Value" => temperatura,
 "Latitude" => @latitude,
  "Longitude" => @longitude,
 "Date" => DateTime.now.to_date,
  "Time" => Time.now
}

paramsL = {
  "user_id" => @id,
 "Sensor" =>  "Luminosidade",
 "Value" => luminosidade,
  "Latitude" => @latitude,
  "Longitude" => @longitude,
 "Date" => DateTime.now.to_date,
  "Time" => Time.now
}

paramsP = {
  "user_id" => @id,
 "Sensor" =>  "Pressao",
 "Value" => pressao,
  "Latitude" => @latitude,
  "Longitude" => @longitude,
 "Date" => DateTime.now.to_date,
  "Time" => Time.now
}

paramsH = {
  "user_id" => @id,
 "Sensor" =>  "Humidade",
 "Value" => humidade,
  "Latitude" => @latitude,
  "Longitude" => @longitude,
  "Date" => DateTime.now.to_date,
  "Time" => Time.now
}

urlS = URI("http://localhost:3000/posts")
#http
http = Net::HTTP.new(urlS.host, urlS.port)
request = Net::HTTP::Post.new(urlS)
request["content-type"] = 'application/json'
request["cache-control"] = 'no-cache'

#Posts
request.body = paramsT.to_json
response = http.request(request) #temp
request.body = paramsL.to_json
response = http.request(request) #lumi
request.body = paramsP.to_json
response = http.request(request) #press
request.body = paramsH.to_json
response = http.request(request) #humi

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

#getID
res = Net::HTTP.get_response(urlU)
data = JSON.parse res.body 
aux = data.select { |a| a["name"] == username && a["pwd"] == password } 

#NEEDS FIX 
puts "Login com Sucesso"
aux.each do |x|
@idU = x["id"] 
puts @idU
end
#################
#simular
simula(@idU)
		

when "registo"
	puts "Introduza as credenciais desejadas:"
	puts "Username:"
	username = gets.chomp
	puts "Password:"
	password = gets.chomp
  #post
 paramsR = {
  "name" => username,
  "pwd" => password,
  "estado" => true
  }
http2 = Net::HTTP.new(urlU.host, urlU.port)
request = Net::HTTP::Post.new(urlU)
request["content-type"] = 'application/json'
request["cache-control"] = 'no-cache'
request.body = paramsR.to_json
response = http2.request(request)
data = JSON.parse response.body 
aux2 = data.select { |a| a["name"] == username && a["pwd"] == password } 
#NEEDS FIX 
puts "Registo com sucesso"
	puts "Introduza as suas credenciais!"
	puts "Username:"
	username = gets.chomp
	puts "Password:"
	password = gets.chomp

#getID
res = Net::HTTP.get_response(urlU)
data = JSON.parse res.body 
aux = data.select { |a| a["name"] == username && a["pwd"] == password } 

#NEEDS FIX 
puts "Login com Sucesso"
aux.each do |x|
@idU = x["id"] 
puts @idU
end
#################
#simular
simula(@idU)


else puts "Opcao invalida!"

end






