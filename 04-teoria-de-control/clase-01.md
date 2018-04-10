# Teoría de Control
* Jefe de Cátedra: Dr. Rubén Fusario
* Profesor: Julio Rossini
* Ayudante: Ing. Melanie Blejter
* Bibliografía:
  * ** Teoría de Control para Informáticos (Fusario-Bursztyn-Crotti-Civale) **
  * Sistemas de control (Bolton)
  * Sistemas de control modernos (Ogata)

#### Regimen de Promoción
Un 8 en cada parcial, uno de los dos puede no ser en primera instancia.
* 1er parcial 15/5/2018
* 2do segundo 26/6/2018
* CIERRE 10/7/2018

#### Actividades prácticas:
1. MatLab(privativo) -> Octave(libre) --> 17/4/2018
2. PLC -> Siemenes -> IDE --> ~2do parcial
3. Arduino ->
4. Investigación -> a lo largo del cuatrimestre, tiene hitos

-----------------------------------------------------------------

#### Sistemas de Control
Mochila del inodoro -> Controla el nivel del agua
Termotanque -> Controla la temperatura del agua
Pava eléctrica -> Controla la temperatura del agua
Plancha de la ropa -> Controla la temperatura del agua
Aire acondicionado -> Controla la temperatura ambiente

###### Glosario:

* Estrategia de control: estrategia que se toma para controlar la variable
  * on-off: sistemas que solo prenden y apagan algo para controlar la variable
  * Control continuo: sistemas que varian la potencia del actuador para controlar la variable
* Set point: valor que controlas de la variable. ENTRA SUMANDO en el punto suma.
* Error: la diferencia entre el set point y el valor medido
* Error en estado estable: el error medido luego de la etapa transitoria, cuando se estabiliza el sistema
* Punto suma: 1 salida, 1+ entradas
* Actuador: elemento que compensa la variable
* Proceso o Planta: sistema a controlar
* Controlador: condiciona el accionar del actuador en función del error obtenido.
* Sensor: elemento que mide la variable
* SdC Lazo Abierto: No tiene sensor. Se basan en la experiencia.
* SdC Lazo Cerrado: Si tiene sensor. Se basan en fundamentos ingenieriles.
* Lazo de realimentación: parte de un SdC Lazo Cerrado, que realimenta el punto suma. ENTRA RESTANDO.

###### Diagrama de bloques

<img src="https://user-images.githubusercontent.com/4105740/37687839-e436db18-2c7b-11e8-9881-51497ab4707f.png" alt="diagrama de bloque lazo cerrado1" style="border-style: double">
