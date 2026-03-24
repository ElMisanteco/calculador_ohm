# calculador_ohm

Recalcando un poco, tenemos que la **Ley de Ohm** estudia la interacción en un circuito eléctrico entre la corriente, la resistencia y el voltaje, ya que al modificar una de las tres, las otras dos reaccionan también. Esta ley consta de tres fórmulas para calcular cada elemento eléctrico.

1. V = I × R (Voltaje = Corriente × Resistencia)
2. I = V / R (Corriente = Voltaje / Resistencia)
3. R = V / I (Resistencia = Voltaje / Corriente)

donde:

- **Voltaje:** Es la diferencia de potencial eléctrico que "impulsa" la corriente a través del circuito (se mide en voltios).

- **Resistencia:** Es la oposición al paso de la corriente que tienen ciertos materiales (se mide en ohmios).

- **Intensidad de corriente:** Cantidad de corriente que pasa por un punto en una unidad de tiempo (se mide en amperios)

## Aplicación

El proyecto está estructurado de la siguiente manera

- Hay un archivo main.rb dentro del directorio que debe ser ejecutado de la siguiente manera:

```bash
ruby main.rb
```

Al hacer esto se mostrará un menú donde el usuario deberá elegir la variable que necesita calcular:

```bash
Menú

1 - Calcular Voltaje (V)
2 - Calcular Intensidad de corriente (I)
3 - Calcular Resistencia (R)

¿Qué requieres hacer?
|
```

Al escribir lo que se requiere calcular, el programa solicitará al usuario que ingrese los otros dos valores necesarios para aplicar la fórmula. De ahí aplicará la fórmula adecuada para obtener el resultado y posteriormente mostrárselo al usuario:

```bash
El Voltaje corresponde al valor de: 4 voltios (V).
```
