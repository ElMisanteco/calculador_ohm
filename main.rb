require_relative "calcular_ohm" 
require_relative "ui"


eleccion = menu

incognita = validar_eleccion_menu(eleccion)
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
  
  puts""
  puts "I = #{valor_v} / #{valor_r}"
  puts ""
  puts "El valor que corresponde a I es: #{valor_de_i} amperios."
  puts ""
  puts "V = #{valor_v} voltios"
  puts "R = #{valor_r} ohmios"
  puts "I = #{valor_de_i} amperios"

when 2 # Resistencia

when 3 # Voltaje

end
