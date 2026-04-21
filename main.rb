require_relative "calcular_ohm" 
require_relative "ui"


eleccion = menu
incognita = validar_eleccion_menu(eleccion)

until incognita == 4
   
    puts ""
    puts "Por favor indique los valores que se le solicitan y presione enter:"

    case incognita
    when 1 # Intensidad
    
      puts ""
      puts  "I = V / R"
      
      puts ""
      solicitar_v = "¿Cual es el valor del voltaje(V)?"
      valor_v = recibir_dato(solicitar_v)
    
      puts ""
      solicitar_r = "¿Cual es el valor de la resistencia(R)?"
      valor_r = recibir_dato(solicitar_r)
      valor_r = validar_div_cero(valor_r, solicitar_r)
    
      calcular_i = CalcularOhm.new
      calcular_i.voltaje = valor_v
      calcular_i.resistencia = valor_r
    
      valor_de_i = calcular_i.calcular_intensidad
      
      puts ""
      puts "~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~"
      puts ""
      puts "I = #{valor_v} / #{valor_r}"
      puts ""
      puts "El valor que corresponde a I es: #{valor_de_i.round(2)} amperios."
      puts ""
      puts "V = #{valor_v} voltios"
      puts "R = #{valor_r} ohmios"
      puts "I = #{valor_de_i.round(2)} amperios"
    
    when 2 # Resistencia
      puts ""
      puts  "R = V / I"
    
      puts ""
      solicitar_v = "¿Cual es el valor del voltaje(V)?"
      valor_v = recibir_dato(solicitar_v)
    
      puts ""
      solicitar_i = "¿Cual es el valor de la intensidad(I)?"
      valor_i = recibir_dato(solicitar_i)
      valor_i = validar_div_cero(valor_i, solicitar_i)
    
      calcular_r = CalcularOhm.new
      calcular_r.voltaje = valor_v
      calcular_r.intensidad = valor_i
    
      valor_de_r = calcular_r.calcular_resistencia
      
      puts ""
      puts "~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~"
      puts ""
      puts "R = #{valor_v} / #{valor_i}"
      puts ""
      puts "El valor que corresponde a R es: #{valor_de_r.round(2)} ohmios."
      puts ""
      puts "V = #{valor_v} voltios"
      puts "R = #{valor_de_r.round(2)} ohmios"
      puts "I = #{valor_i} amperios"
    
    when 3 # Voltaje
      puts ""
      puts "V = I x R"
    
      puts ""
      solicitar_i = "¿Cual es el valor de la intensidad(I)?"
      valor_i = recibir_dato(solicitar_i)
    
      puts ""
      solicitar_r = "¿Cual es el valor de la resistencia(R)?"
      valor_r = recibir_dato(solicitar_r)
      
      calcular_v = CalcularOhm.new
      calcular_v.intensidad = valor_i
      calcular_v.resistencia = valor_r
    
      valor_de_v = calcular_v.calcular_voltaje
    
      puts ""
      puts "~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~"
      puts ""
      puts "V = #{valor_i} x #{valor_r}"
      puts ""
      puts "El valor que corresponde a V es: #{valor_de_v.round(2)} voltios."
      puts ""
      puts "V = #{valor_de_v.round(2)} voltios"
      puts "R = #{valor_r} ohmios"
      puts "I = #{valor_i} amperios"
    end

    puts ""
    puts "~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~"
    puts ""
    puts "¿Requiere realizar algún otro cálculo?"
    
    eleccion = menu
    incognita = validar_eleccion_menu(eleccion)

end

puts ""
puts "Saliendo..."