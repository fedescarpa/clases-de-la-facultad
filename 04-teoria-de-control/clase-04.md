# Clase 04 - 10/04/2018

## La funcion de transferencia

* La funcion de transferencia de un sistema es un modelo matemático porque es un método operacional para expresar la ecuación diferencial que relaciona la variable de salida con la de entrada.

* La función de transferencia es una propiedad de una sistema. Independiente de la magnitud y naturaleza de la entrada o función de exitación.

* Incluye las unidades necesarias para relacionar la entrada con la salida. Sin embargo, no proporciona información acerca de la estructura física del sistema.

* Se conoce la función de transferencia de un sistema, se estudia la salida o respuesta para varias formas de entrada con la intención de comprender la naturaleza del sistema.

* Si se desconnoce la función de transferencia de un sistema puede establecerse experimentalmente y produciendo entradas conocidas y estudiando las salidas del sistema.



## Transformada de Laplace

```haskell
impulso t          -- delta
  | t == 0 = 1
  | t /= 0 = 0

escalon t          -- mu
  | t <  0 = 0
  | t >= 0 = 1

rampa t            -- ro
  | t <  0 = 0
  | t >= 0 = t

parabola t         -- pe
  | t <  0 = 0
  | t >= 0 = (t^2)/2
```

|    t    | Laplace | Transformada |
|:-------:|:-------:|:------------:|
|  delta  |  --->   | 1            |
|  mu     |  --->   | 1/s          |
|  ro     |  --->   | 1/s^2        |
|  pe     |  --->   | 1/s^3        |


### Ejemplo

```
                R
   ___________/\/\/\___________
  |                            |
  |                          __|__
Vi(t)                      C __ __   Vo(t)
  |                            |
  |____________________________|
```




```
Vc(t) = 1/c integral i(t) dt
```
```
Vl(t) = _L_di(t)_
           dt
```