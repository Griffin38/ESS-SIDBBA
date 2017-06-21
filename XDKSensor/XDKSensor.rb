

def simula()

@temp = 0
@ruido = 0
@latitude = rand(-90.000000000...90.000000000)
@longitude = rand(-180.000000000...180.000000000)
   temperatura = Thread.new {
   loop {
   sleep(30)
   @temp=@temp+1
   value = rand(-40..80)
   time = Time.now.getutc
   #mudar
   #server.puts "Temperatura #{value} #{@latitude} #{@longitude} #{time}"
   
    }
   }   
   
   acustica = Thread.new {
   loop {
   sleep(1)
   @ruido = @ruido+ 1
   value = rand(0..200)
   time = Time.now.getutc
   #mudar
   #server.puts "Acustica #{value} #{@latitude} #{@longitude} #{time}"
   
    }
   } 


     
puts "PARA TERMINAR ESCREVA: CLOSE"
if gets.chomp == "CLOSE" || gets.chomp == "close"
	Thread.kill(temperatura) 
	Thread.kill(acustica) 
	total_leituras = @temp + @ruido
	puts "TOTAL DE LEITURAS: #{total_leituras}"
end

end



simula()






