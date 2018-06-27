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


## Ventajas de MPLS respecto ATM respecto a la transmisión de datagrama

