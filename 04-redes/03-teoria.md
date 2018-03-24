**PDU**: Protocol data unit. Unidad minima de trama de cada capa del modelo OSI.

Un switch recibe una trama que no está tabulada, entonces la reenvia por todos los puertos excepto por el puerto por donde recibió la trama.
Se puede armar una galleta de tramas.

#### 802.1d Spanning Tree Protocol (Capa Enlace)

_Su función es la de gestionar la presencia de bucles en topologías de red debido a la existencia de enlaces redundantes (necesarios en muchos casos para garantizar la disponibilidad de las conexiones)._

* Soluciona los problemas de encontrarle camino a las tramas.
* Corre encapsulado en una trama ethernet o token ring
* Armá una red en forma de árbol con los switches de mayor importancia
* Se regenera cada 5 minutos

![image](https://user-images.githubusercontent.com/4105740/37855588-cbfe7d76-2ece-11e8-8c1e-5faa3c08e103.png)

* Cada switch tiene una MAC address
* Cada switch tiene una prioridad. Por default es 32768
* Cada enalce tiene su costo. Cuanto mas lento mas caro:
  * Costo ETH: 2.000.000
  * Costo Fast ETH: 200.000
  * Costo Giga ETH: 20.000

###### BPDU

![image](https://user-images.githubusercontent.com/4105740/37856074-2ecf770a-2ed1-11e8-8224-4ffa8bc71e5f.png)

La MAC Address destino de la trama ethernet que envuelve al BPDU, es siempre la de broadcast.

Estados en una inundación:

1. Bloqueado: Solo recibe las BPDU
2. Escucha:
3. Aprendizaje y luego:
  * Designado ó
  * Desactivado

Estado del puerto | Recibe BPDU | Envía BPDU | Maneja Tramas
----------------- | ----------- | ---------- | -------------
Bloqueado | Si | No | No
Raiz | Si | No | Si
Raiz | Si | No | Si
Designado | Si | Si | Si

#### 802.1q (vLAN) a nivel switch

![image](https://user-images.githubusercontent.com/4105740/37856440-44816b1a-2ed3-11e8-9cfa-b283338d16f5.png)

Las máquinas retransmiten todas las tramas, pero si son de vLAN distintas, no pueden comunicarse.

###### Trama

![image](https://user-images.githubusercontent.com/4105740/37856525-a59251f8-2ed3-11e8-9d04-a4e0a56a5da4.png)

* Tag protocol identifier (TPID)
  * A 16-bit field set to a value of 0x8100 in order to identify the frame as an IEEE 802.1Q-tagged frame. This field is located at the same position as the EtherType field in untagged frames, and is thus used to distinguish the frame from untagged frames.
* Tag control information (TCI)
  * A 16-bit field containing the following sub-fields:
* Priority code point (PCP)
  * A 3-bit field which refers to the IEEE 802.1p class of service and maps to the frame priority level. Different PCP values can be used to prioritize different classes of traffic.[4]
* Drop eligible indicator (DEI)
  * A 1-bit field. (formerly CFI[b]) May be used separately or in conjunction with PCP to indicate frames eligible to be dropped in the presence of congestion.[6]
* VLAN identifier (VID)
  * A 12-bit field specifying the VLAN to which the frame belongs. The hexadecimal values of 0x000 and 0xFFF are reserved. All other values may be used as VLAN identifiers, allowing up to 4,094 VLANs. The reserved value 0x000 indicates that the frame does not carry a VLAN ID; in this case, the 802.1Q tag specifies only a priority (in PCP and DEI fields) and is referred to as a priority tag. On bridges, VID 0x001 (the default VLAN ID) is often reserved for a network management VLAN; this is vendor-specific. The VID value 0xFFF is reserved for implementation use; it must not be configured or transmitted. 0xFFF can be used to indicate a wildcard match in management operations or filtering database entries.[7]

#### 802.5 Token Ring

###### Topologia

![image](https://user-images.githubusercontent.com/4105740/37856813-46d6af22-2ed5-11e8-96a5-31b684c5d121.png)

###### Trama

<img width="1247" alt="screen shot 2018-03-23 at 20 08 33" src="https://user-images.githubusercontent.com/4105740/37856924-fe28075c-2ed5-11e8-8b70-c742f8f00600.png">


#### FDDI 1er red WAN de alta velocidad

_Basada en token ring_
