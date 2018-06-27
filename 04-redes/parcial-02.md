# 2do Parcial de Redes

MPLS: MultiProtocol Label Switching
* Opera entre capa de enlace y capa de red
* Diseñado para unificar el servicio de transporte de datos para redes basadas en circuitos o paquetes.
* Puede usarse para el tráfico de VozDigital y Paquetes IP
* A cada paquete MPLS se le mete un encabezado que tiene un stack de etiquietas.

ATM: Asyncronous Transfer Mode
* Permite la transferencia simultanea de datos y voz a través de la misma línea.
* Comparte el canal para el transmisor y el receptor, y aprovecha el canal vacío para enviar otras cosas (como Tiempo Real de voz, video y tráfico de TCP a ráfagas).
* Si bien ATM consta de secuenia de celdas de 53 bytes a través de un canal virtual, la forma que se gestiona depende del flujo y de los requisitos de la aplicación.

  * AAL: ATM Adaptation Layer (Capa de adaptación ATM)
    * Adapta el formato de celda ATM al formato de la capa de arriba de enlace en la arquitectura correspondiente
      * Constant Bit Rate (CBR): Se divide la capacidad del ancho de banda y sirve para simular redes LAN y transmisión de cosas en Tiempo real como Voz y Video
      * Variable Bit Rate (VBR): Se utiliza sobre la capacidad desaprovechada por el CBR. Permite el tráfico a ráfagas.
        1. Real Time (RT): Video y Voz.
        1. No Real Time (NRT): Datos en general
      * Unspecified Bit Rate (UBR): Si hay congestión en un switch se eliminan los paquetes.
      * Available Bit Rate (ABR):
    * Que tipos de trafico transmite las capas AAL:
      * AAL1: Audio y Video sin comprimir
      * AAL2: Video comprimido
      * AAL3y4: Datos en general
      * AAL5: Datos en general pero como menos overghead y mejor deteccion de errores.

X25: Estandar para WAN para computación de paquetes. Su protocolo de enlace es LAPB (Link Acces Procedure Balanced), basado en HDLC (High LEvel Data Link Control).
  * Tiene 2 tipo de protocolos para:
    1. Control de Flujo
        * Ventana Deslizante: Pido un una ventana de X cantidad y me envían tantos paquietes hasta X. Se uzan números de secuencia para enumerar las tramas y el receptor solicitará recibir la trama X, confirmando de manera implicita el envío de las restantes tramas hasta X-1.
        *. Asentimiento Mediante Piggyback:
          * RR: Ready Receive
          * RNR: Ready Not Receive
    1. Control de Errores
        * ARQ: Se envía el reject de una trama para retransmitirla a partir de esa trama.

HDLC:
  * Protocolo que que emplea transmisión soncróna.
  * Los intercambios se realizan en base a tramas
  * Tipos de tramas:
    * Información: transportan los datos generados por el usuario. Se incluye información para control ARQ de errores y de flujo.
    * Supervición: Proporciona el mecanismo ARQ cuando no se usa confirmación en trama de confirmación. Se encarga de acptación, supspensión temporal y solicitud de transmisión de tramas.
    * No numeradas: Se utiliza para tareas de gestion, conexión/desconexión y control de enlace.




## Ventajas de MPLS respecto ATM respecto a la transmisión de datagrama

MPLS:
* Mayor fiabilidad
* Mayor rendimiento
* Reducción de cosotos por mayor eficiencia de la red
* Capacidad para priorizar a los paquetes que transportan tráfico de voz, ideal para llamadas VoIP.

## ¿Qué es congestión de Red y cómo la tratan Frame Relay y ATM?

_Congestión_: Numero de paquetes que se transmite en una red se empieza a aproximar al límite de capacidad.

  * ATM: Se acuerda con el usuario cuanto puede transmitir y el tipo de servicio a proveer. Puede bufferear para encolar celdas y mandarlos sin sobrecargar la red.
  * Frame Realy: Activa bits para notificar que la red esta congestionada: Si la congestion es baja le avisa a las fuentes que mas tráfico envían que bajen un poco, si es media a todas las fuentes y si es alta empieza a descartar paquetes.
    * Discard Elegibility (DE): Es descartable
    * Foward Explicit Congestion Notificacion (FECN): Vamo' a calmarno' el paquete tardó en llegar.
    * Backward Explicit Congestion Notificacion (BECN): Vamo' a calmarno' la respuesta al paquete va a tardar en entregarase.


Frame Realay Ejercicios

* TC: Período en el que estas midiendo (en segundos).
* Flujo de datos: Bits a transmitir.
* CIR: Commited Information Rate.
* EIR: Extended Information Rate.
* Tamaño de Trama (suele ser 1500 Bytes), se trabajan en bits => 12000 bits
* `BC = TC * CIR`
* `BE = TC * EIR`
* Tasa de acceso = AR
* `Tramas No Marcadas = BC / Tamaño de Trama`
* `Tramas Sí Marcadas = BE / Tamaño de Trama`
* `Tramas Descartadas = Tramas Totales - Tramas No Marcadas - Tramas Sí Marcadas`