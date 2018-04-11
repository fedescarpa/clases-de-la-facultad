## Fecha de Examen

25 de Abril del 2018

## Repaso clase pasada

Ver [clase anterior](./05-teoria.md).

## IPv6

* Version: Version (IPv4 o IPv6)
* Clase de Tráfico: Si puede o no puede acptar la congestión de la red.
* Etiquetas de flujo:
* Longitud de la carga útil:
* Siguiente cabecera
* Límite de saltos:
* IPv6 Origen
* IPv6 Destino

* Se le pueden agregar cabeceras.
  * 0: (Hop By Hop) Cada uno de los switcher por los que pasa el datagrama tienen que verificar la cabecera entera.
  * 43: (Encabezado de enrutamiento) Me dice que rutas tiene y necesita.
  * 44: (Fragmentación)
  * 50: ESP - Encripta
  * 51: AH - Dice que la información salió de quien debería salir
  * 6:  TCP
  * 17: UDP
  * 58: ICMPv6
  * 59: No Next header - No hay proxima cabecera
  * EGP/IGP: External/Internal Getway Protocol

![cabeceraipv6](https://user-images.githubusercontent.com/1039278/38646465-7309f02a-3dbe-11e8-81e3-f064130d030e.png)


### Difusiones

* `UNICAST`, `ANYCAST`:
  * Prefijo de Routeo
  * Subnet ID
  * Identificador de Interface

IPv6: los (::) son todos ceros
* Publicas: 2001::/16
* Privadas: FE80::/16

### Algoritmo EUI-64

Pasa una MAC a una IPv6



## Seguridad en una RED

1. Transporte: Las máquinas se conectan entre sí

1. Tubo: Se conectan mediante los nodos (like VPN)


Authentication Header (integridad, autenticidad y no repudio)






## Para el LABO del Viernes 13 (MIEDO) Tenemos que saber

* Modelo OSI (F.E.R.T.S.P.A)
* LAN -> Conmutada
* Filtros de tramas basadas en MAC
* VLAN: 802.1Q
* SpanningTree: 802.1D
