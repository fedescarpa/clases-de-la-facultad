# Parcial 1 - Tema A

## Funcionamiento protocolo 802.11

El protocolo `802.11` tiene 2 modos:

1. `AD-HOC`: Las estaciones costituyen un I.B.S.S. (Independent Basic Service Set) (Red Wi-Fi) y se comunican directamente sin requierir un punto de acceso.
1. `INFRAESTRUCTURA`: Las estaciones costituyen un B.S.S. (Basic Service Set) (Red Wi-Fi) Bloque báscio de una WAN y se debe disponer de un punto de acceso para acceder a los recursos de la red clableada.

## Diferencias entre el protocolo 802.3 y Ethernet

En `802.3`

* 7 Bytes   : Preámbulo
* 1 Byte    : Delimitador de trama
* 2|6 Bytes : Direccion destino
* 2|6 Bytes : Direccion origen
* 2 Bytes   : Longitud de la trama
* 1500 Bytes: Datos (Se rellena con ceros)
* 4 Bytes   : C.R.C.

En `Ethernet`

* 8 Bytes   : Preámbulo
* 6 Bytes   : Direccion destino
* 6 Bytes   : Direccion origen
* 2 Bytes   : Tipo de protocolo
* 1500 Bytes: Datos (Se rellena con ceros)
* 4 Bytes   : C.R.C.


## Time to Live (TTL)

Concepto usado en redes que indica por cuantos nodos puede pasar un paquete por una red antes de ser descartado o devuelto a su origen.


## No se la acuerda el pelotudo


## Qué función cumple la capa física

Primera capa del modelo OSI. Adapta el sistema al medio físico por el cual se transmite/recibe el mensaje.
Sus principales funciones son:
1. Definir el medio físico
1. Definir la características materiales y eléctricas que se van a utilizar
1. Definir la características funcionales de la interfaz.
1. Transmitir los Bits
1. Manejar las señales esléctricas del medio de transmisión
1. En resumen, garantiza la conexión

## Funcionamiento del protocolo 802.3

* Aplica a las 2 primeras capas del modelo OSI.
* Divide la capa de enlace en 2 subcapas `MAC` y `LLC`.
* Está orientado a la conexíón
* Usa el protocolo de CSMA/CD (Carrier Sense Multiple Access/Collision Detection)


## Diferencias entre Hub, Switch y Router

* HUB: Opera en capa I (fisíca). Actúa como un repetidor. Tiene un dominio de colisión.
* Swith: Opera en capa II (enlace). Conecta computadoras entre sí. Tiene un dominio de colisión por cada puerto.
* Router: Opera en capa III (red). Conecta redes entre sí.

## Desarrollar 802.11 y diferenciar (a - b - g - n)

Solo cambia en la fracuencia y la velocidad de transmisión

|     | Frecuencia | Velocidad de Transmisión |
|:---:|:----------:|:------------------------:|
| a   | 5GHz       | 54Mbps                   |
| b   | 2.4GHz     | 11Mbps                   |
| g   | 2.4GHz     | 54Mbps                   |
| n   | (5/2.4)GHz | 400Mbps                  |
| ac  | 5GHz       | 1.4Gbps                  |


## ARP

Protocolo de capa 3 que se usa para averiguar la MAC de un host dada su IP mediante un Broadcast.

## Qué función cumple la capa enlace

* Acceso al medio
* Detección de errores
* Direccionamiento físico
* Distribución de tramas ordenadas
* Control de flujo
* 802.3, Ethernet y 802.11 es de capa de enlace

