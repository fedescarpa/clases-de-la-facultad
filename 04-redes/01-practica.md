Redes de Información
====================

**Docente**: Rosendo Pérez <perezrosendo@gmail.com>

* _Clases_:

  * Miércoles Teoría

  * Viernes Práctica

* _Bibliografía_: Comunicaciones y Redes de Computadoras

## ¿De qué trata la materia?

Hablaremos de protocolos. Un protocolo son reglas escritas para establecer una comunicación.

**LAN**: Local Area Network (máximo 10/15 km)

**WAN**: Wide Area Network (mínimo 15 km)

Se diferencian en la distancia que hay entre máquinas.


## Protocolos

1. **BSC**: Creado en 1970, corría a una velocidad de 50 baudios. Este muta con el tiempo y se creándose así...

1. **HDLC**: Primer protocolo normalizado en 1984, avalado por _ISO_ e _IEEE_. Su velocidad de transferencia es 240bps. Sentó la base de lo sería la conexión entre dos computadoras. Permitía hacer:

    *. Control de Flujo: Capacidad que tiene el protocolo de negociar la cantidad de información que se transmite.

    *. Control de Errores: Capacidad que tiene el protocolo de detectar errores en la transmisión de datos.

1. **x25**: Protocolo creado para soportar **redes** de computadoras. Creado en el año 1999. Aún sigue existiendo porque es muy utilizado a nivel mundial. Si bien no se crea más, sigue teniendo una interfaz universal para mantener la compatibilidad. Trabaja a una velocidad de 64kb/s.

### Caída del muro de Berlín

La guerra fria, la cual termina con la caída del muro de Berlín, impacta en la tecnología actual cambiando la evolución de los protocolos.

Nace la PC a precio razonable, la fibra óptica y los protocolos TCP/IP e ISDN

Nuevos protocolos:

1. **FRAME DELAY**: Evolucion del HDLC, que manda datos y audio (2 Mb/s)

1. **ATM**: (Modo de Transferencia Asincrónica) Para todo tipo de Multimedia (640 Mb/s). de este se desprende tambien e **MPLS**

1. **IEEE 802.3 (Ethernet)**: Trabaja a 10Mb/s y evolucionó a la Fast Etheernet (FE 100Mb/s). Luego evoluciona a GE (1GB/s) y después la 10GE (10 Gb/s).

1. **IEEE 802.5 (Token Ring)**

1. **WiFi**: A, B, G, AC (tipos de WiFi).


## Ahora sí, a los bifes...

Pasar una aplicación a un cable para hacer transferencia de datos es un problema, y se decidió hacer un modelo de comunicaciones que lo dividía en 7 etapas, llamado OSI (Open Standard Interconnection).

### Modelo OSI:

1. **A**plicación:
1. **P**resentación:
1. **S**esión:
1. **T**ransporte:
1. **R**ed: agrega un encabezado con las direcciones virtuales (IP) al paquete de datos.
1. **E**nlace: agregar un encabezado con direcciones físicas y un control de errores al final del conjunto de datos a transportar.
1. **F**ísica: adapta la información al tipo de canal de transmisión que tenga.

**Nota**: Regla nemotécnica (**FER** **T**rabaja en un **SPA**)

![Capas del Modelo OSI](https://upload.wikimedia.org/wikipedia/commons/f/fc/PDUs.PNG)


### Modelo de Internet (TCP/IP):

![Capas del Modelo TCP/IP](https://elcuadernodejhonny.files.wordpress.com/2011/10/figura2-1.jpg)


