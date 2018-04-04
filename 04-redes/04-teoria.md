#### Tabla Comparativa de la Familia IEEE 802

![image](https://user-images.githubusercontent.com/4105740/38059145-be747e12-32bb-11e8-913e-8dbba115d40c.png)

## WiFi

#### Etapas de una máquina cuando se conecta a una BSS

* Asociación - se conecta a un access point
* Reasociación - se conecta a otro
* Desasociación - se elimina la asociación
* Distribución - capacidad de los access point de conectarse a una red y distribuir la información
* Integración - capacidad de una red de integrar redes ethernet con redes WiFi

#### 802.11 (El estándar define dos modos de operación):​

* Modo Ad­hoc​: En el modo Ad­hoc las estaciones constituyen un
IBSS (red Wi­Fi), en este modo de funcionamiento las estaciones
se comunican directamente, sin requerir un punto de acceso.
* Modo infraestructura:​En el modo infraestructura, la BSS (bloque
básico de una WLAN) debe disponer de un punto de acceso a
través del cual se conectan las estaciones. El cliente utiliza el
punto de acceso para acceder a los recursos de la red cableada.
La red cableada puede ser la intranet de una organización o
Internet.

#### Trama BSS

![image](https://user-images.githubusercontent.com/4105740/38060386-dba17cce-32c0-11e8-94a9-fdba08b5e923.png)


###### Campo Control de Trama

El Campo de Control de Trama, ver Figure 1.12, contiene información de control utilizada para definir el tipo de trama MAC 802.11 y proporcionar la información necesaria a los siguientes campos para entender cómo procesar la trama MAC.

Una descripción de cada subcampo del campo de control de trama es la siguiente:

###### Protocol Version

Proporciona la versión actual del protocolo 802.11 utilizado. Las estaciones receptoras utilizan este valor para determinar si es soportada la versión del protocolo de la trama recibida.

###### Type and Subtype

Determina la función de la trama. Hay tres tipos de tramas diferentes: de control, de datos y de gestión. Existen varios subtipos para cada tipo de trama. Cada subtipo determina la función específica que debe llevar a cabo el tipo de trama asociada.
To DS and From DS indica si la trama se dirige o sale del DS (sistema de distribución), y sólo se utiliza en las tramas de tipo de datos de las STA asociadas con un AP.

###### More Fragments

Indica si hay más fragmentos de la trama, ya sea de tipo datos o de gestión.

###### Retry

Indica si la trama está siendo retransmitida, ya sea de tipo datos o de gestión.

###### Power Management

Indica si la STA que envía está en modo activo o en el modo de ahorro de energía.

###### More Data

Indica a un STA que se encuentra en el modo de ahorro de energía que el AP tiene más tramas para enviar. También se utiliza en los APs para indicar que existen tramas adicionales de difusión/multidifusión.

###### WEP

Indica si se utilizan cifrado y autenticación en trama. Se puede configurar para todas las tramas de datos y de gestión que tienen el subtipo establecido en autenticación.

###### Order

Indica que todas las tramas de datos recibidas deben ser procesadas en orden.

###### Campo Duración/ID

Este campo es utilizado en todas las tramas de tipo control, excepto en las del subtipo Power Save (PS) Poll, para indicar la duración restante necesaria hasta recibir la próxima transmisión de trama. Cuando se trata del subtipo PS Poll, el campo contiene la identidad de asociación (AID) de la STA que transmite la trama.

###### Campos de Dirección

Dependiendo del tipo de trama, los cuatro campos de dirección contendrán una combinación de los siguientes tipos de dirección:

* **BSS Identifier (BSSID)** identifica unívocamente a cada BSS. Cuando la trama es de una STA en una infraestructura BSS, el BSSID es la dirección MAC del AP. Cuando la trama es de una STA perteneciente a una IBSS, el BSSID es una dirección MAC administrada localmente generada aleatoriamente por la STA que inició la IBSS.
* **Destination Address (DA)** indica la dirección MAC del destino final que debe recibir la trama.
* **Source Address (SA)** indica la dirección MAC de la fuente original que inicialmente creó y transmitió la trama.
* **Receiver Address (RA)** indica la dirección MAC de la próxima STA que debe recibir la trama.
* **Transmitter Address (TA)** indica la dirección MAC de la STA que transmitió la trama.

Para más información acerca de los tipos de dirección y del contenido de los campos de dirección en el encabezado MAC 802.11, consulte el estándar IEEE 802.11 en la Web del IEEE [6].

###### Control de Secuencia

El campo de control de secuencia está formado por dos subcampos, el número de fragmento y el número de secuencia, tal y como se muestra en la Figura 1.12.

A continuación se describe cada uno de los subcampos anteriores:

* **Sequence Number** indica el número de secuencia de cada trama. El número de secuencia es el mismo para cada trama enviada en una trama fragmentada; de lo contrario, el número de secuencia se incrementa en uno hasta llegar a 4095, volviéndose a empezar desde cero.
* **Fragment Number** indica el número de fragmento en una trama fragmentada. El valor inicial se establece en 0 y luego se incrementa en uno para cada uno de los fragmentos de trama enviados.

###### Cuerpo de la Trama

El cuerpo trama contiene los datos o la información incluida en cualquier trama del tipo de gestión o de datos.

###### Secuencia de Verificación de Trama

La STA transmisora utiliza una verificación de redundancia cíclica (cyclic redundancy check - CRC) sobre todos los campos de la cabecera MAC y el cuerpo de la trama para generar el valor de FCS. La STA receptora utiliza el mismo cálculo de CRC para determinar su propio valor del campo FCS y verificar si se produjeron errores en la trama durante la transmisión.
