Adquisicion de Conocimientos
=============================

Extraccion de conocimientos -> fuentes escritas - conocimiento publico

Educcion de Conocimientos -> fuentes humanas (privado)- conocimiento privado

Analisis de protocolos -> Grabar al experto
* Grabacion de protocolo
  * El Ing en conocimiento explica lo que espera del experto
    * objetivo de la tecnica
    * comportamiento del experto
  * Puesta en situacion
    * darle confianza al experto
  * Registro del protocolo
    * grabacion del protocolo

    `IDENTIFICAR EL MODELO`
* Transcripcion

* Codificacion
  * Identificacion de **conceptos**, **caracterisiticas**, **valores**, **relaciones** y **operadores**
    (medio utilizado por el experto para pasar de un estado del problema a otro estado mas proximo
    a la solucion).

    | Elemento | Tipo |
    |:-----------:|:---------:|
    | vemos que | relacion|
    | droide | concepto|
    | tiene | relacion|
    | cuerpo | concepto|
    | forma | caracteristica|
    | cilindrica | valor|
    | presenta | relacion|
    | programacion | caracteristica|
    | avanzada | valor|
    | posee | relacion|
    | base de conocimiento | caracteristica|
    | robusta | valor|

    | Conceptos | Caracteristicas | Valores |
    |:-----------:|:---------:|:-----------|
    | droide | programacion | avanzada |
    | droide | base de conocimiento | robusta |
    | cuerpo | forma | cilindrica |

    * Relaciones implicitas (entre conceptos)

      * Aca se aclaran los conceptos que no tienen caracteristicas asociadas

  * Identificacion de la busqueda

    * Se hayan los estados y los operadores
    * Se colocan las caracteristicas correspondientes a cada estado

  * Identificación de sinónimos, metacomentarios e incertidumbres

    * _Sinónimos_: Droide y robot.
    * _Metacomentarios_: Comentarios que hace el experto que no aporta información directa al razonamiento.

      | Líneas | Metacomentarios | Significado |
      |:------:|:---------------:|:-----------:|
      | [1..4] | Los droides médicos son utilizados en el campo médico | generalidad sobre el trabajo de los droides medicos |
      | 14     | En una segunda observación | subetapas |

  * Incertidumbres: Podríamos deducir (tienen que ver con el cambio de estado)

* Interpretación

  Reglas de razonamiento del experto

  Si (condición) _Ejemplo de condición_: concepto.característica = valor
  entonces (acción)

  `Cantidad reglas = cantidad operadores = cantidad estados`

  ```pseudo
  Si (cuerpo.forma = cilíndrica) y
     (droide.programación = avanzada) y
     (droide.baseDeConocimiento = robusta) y
     (brazo.flexibilidad = muyFlexible) y
     (brazo.longitud = 1metro)
  Entonces asignar(modelo de droide médico, modulo-FX-6)

  Si (droide.rendimientoEnSuTrabajo = muyBueno) y
     (droide.imaginación = notable) y
     (droide.vision = enLaOscuridad)
  Entonces asignar(modelo de droide médico, modulo-FX-7)
  ```

> * Para la próxima clase:
>
>   * K52/03
>   * K52/04
>   * K52/10 (punto 1.5/11)
>   * K52/02
>   Resolver Ejercicio Número 3 de la guía de campus virtual
>



