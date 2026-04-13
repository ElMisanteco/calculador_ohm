class CalcularOhm

  attr_accessor :intensidad, :resistencia, :voltaje
  
  def calcular_intensidad
    @intensidad = @voltaje / @resistencia
  end

  def calcular_resistencia
    @resistencia = @voltaje / @intensidad
  end

  def calcular_voltaje
    @voltaje = @intensidad * @resistencia
  end
  
end