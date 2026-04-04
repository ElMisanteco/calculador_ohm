class CalcularOhm

  def initialize
    @intensidad = nil
    @resistencia = nil
    @voltaje = nil
  end

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