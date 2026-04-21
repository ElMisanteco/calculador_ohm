# Método para validar el valor ingresado
def es_valido?(entrada)
   !!(entrada =~ /\A-?(\d+(\.\d+)?|\.\d+)\z/)
end

#Método que contiene el menú
def menu
  puts ""
  puts "###    Bienvenido    ###"
  puts ""
  puts "¿Qué necesita calcular?"
  puts ""
  puts "1 -> La intensidad"
	puts "2 -> La resistencia"
	puts "3 -> El voltaje"
  puts "4 -> Salir"
	puts ""
	puts "Escriba la opción y presione enter:" 
	
  eleccion = gets.chomp.to_i

end

# Método para validar la entrada del menú
def validar_eleccion_menu(eleccion)
  while eleccion < 1 || eleccion > 4
    puts""
    puts "-> [!] Su elección no coincide con las opciones disponibles, intente de nuevo."
    eleccion = menu
  end
    eleccion
end

# Método para recibir y validar el dato
def recibir_dato(mensaje)
  while true
    puts mensaje
    valor = gets.chomp

    if es_valido?(valor)
      #break valor.to_f
      valor = valor.to_f
      if valor < 0
        puts ""
        puts "-> [!] El valor ingresado es negativo, verifique la medición o el dato proporcionado."
      else
        break valor
      end
    else
      puts ""
      puts "-> [!] El valor debe ser numérico."
    end
  end
end

# Función para evitar la división por cero
def validar_div_cero (valor, mensaje)
  while valor == 0
    puts "-> [!] Este valor no puede ser cero, ya que la división por cero es una indeterminación."
    puts ""
    valor = recibir_dato(mensaje)
  end
  valor
end