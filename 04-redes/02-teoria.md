La capa de Transporte es la que corta la información a transmitir en bloques, según el MTU del medio físico. Si MTU es 1024 bytes y quiero transmitir 1kb, se dividirá en 10 bloques.

### Redes LAN

Normas IEEE:

* 802.1d: Spanning tree protocol (protocolo de árbol de expansión)
* 802.1q: vLAN (redes virtuales)
* 802.2: LogicLayerControl (Control de enlace Lógico)
* 802.3: Ethernet
  * 802.3u: Fast Ethernet
  * 802.3z: Giga Ethernet
  * 802.3ac: 10 Giga Ethernet
* 802.5: Token Ring
* 802.11: WiFi
  * 802.11a
  * 802.11b
  * 802.11q
  * 802.11n
  * 802.11ac
* 802.15: piconet => bluetooth/zigbee

En general una misma capa de enlace, puede transmitir a través de mas de un medio. Ejemplo: Una laptopt tiene entrada Ethernet(802.3) y WiFi(802.11).

#### Ethernet

Es un protocolo **no** orientado a la conexión.

* 10Mbit/seg => 10bit/μseg.
* MTU = [64bytes ; 1518bytes]

##### Colisiones

Cuando dos máquinas quiren comunicarse, pueden colisionar y peliar por el canal.

Cuando hay una colisión se abren 2 ventanas de tiempo:

* τ = 0
* τ = 51,2 μseg ====>

En la segunda colisión se abren 4 ventanas:

* 0τ
* τ
* 2τ
* 3τ

En la n colisión => **entre 0τ y (2^n - 1)τ**

##### Versiones ethernet

<img width="925" alt="tipos ethernet" style="border-style: double" src="https://user-images.githubusercontent.com/4105740/37741016-96b5e4d8-2d3e-11e8-8a6a-30b624fdf660.png">


##### Trama ethernet original 802.3

![image](https://user-images.githubusercontent.com/4105740/37741145-03bbe4b0-2d3f-11e8-9aff-bf9924d90efd.png)

El campo longitud SIEMPRE es menor a 1500 en binario. Así la distingo de la siguiente. También los datos están encapsulados en el protocolo 802.2, que hace al protocolo orientado a la conexión.

##### Trama ethernet DIX

![image](https://user-images.githubusercontent.com/4105740/37741421-152a7ab2-2d40-11e8-99b3-43e3aa32633f.png)

* Si la MAC de destino empieza con 0, los próximos bits indican la direccion correcta.
* Si la MAC de destino empieza con 1, los próximos bits indican la direccion de broadcast.
* A veces existe un campo PAD, que sirve para completar los 64byes en caso de que no existan.
* Utiliza HUB (capa1 fisica, es decir que las colisiones se esparcen por toda la red)

##### Fast ethernet

* Es la misma trama pero su velocidad es 100 Mbit/seg
* Utiliza Switch (capa2 enlace, puede leer direcciones MAC). Tiene tabla de enrutamiento que asocia puertos con MAC.
* No hay colisiones

##### Giga ethernet

* Es la misma trama pero su velocidad es 1000 Mbit/seg
* Utiliza Switch. Sin colisiones
* MTU: 512bytes
