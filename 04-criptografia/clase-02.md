
Criptografía
============

#### Noción de Función

```
f: A -> B

A: Dominio
B: Codominio

Existencia: ParaTodo y perteneciente a B, Existe un x perteneciente a A / f(x) = y
Unicidad: f(x) = y1    y    f(x) = y2   =>   y1 = y2
```


#### Funcion Inyectiva

```
ParaTodo x y ParaTodo y pertenecientes a A; x =/= y   f(x) =/= f(y)
```


#### Funcion Sobreyectiva

```
ParaTodo y perteneciente a B, existe un x perteneciente a A / f(x) = y
```


#### Funcion Biyectiva

Tiene que ser Inyectiva y Sobreyectiva... por lo que `|A| = |B|`


#### Composición de funciones

f: A -> B       g: B -> C

`f(g(x)) = (gof)(x)`


#### Funciones Inversa

Sea f: A -> B; F es inversible si

`f(x) = y   =>   f-1(y) = x`


#### Funciones de Cifrado y Descifrado

M: Conjunto o espacio de Mensajes
C: Conjunto o espacio de textos cifrados
K: Conjunto o espacio de claves

Si m pertenece a M es el texto en claro (o plain text)
Si c pertenece a C es el texto cifrado (cipher text)
Si k pertenece a K es la clave (key)


Cada elemento "e" perteneciente a K determina una biyección de M en C que denotamos Ee : M -> C

Ee = función de Encripción o Encryption function


Cada elemento "d" perteneciente a K determina una biyección de C en M que denotamos Dd : C -> M

Dd = función de Desencriptar o Decncryption function


#### Esquema de cifrado

  * { Ee: e perteneciente a K } y { Dd: d perteneciente a K }
  * tal que para todo e perteneciente a K existe un d perteneciente a K, única
  * tal que Dd = (Ee)-1 o sea que ParaTodo m perteneciente a M  =>  Dd[Ee(m)] = m

**Nota:** El par (e;d) se llama "par de claves" y _se determinan juntas_


#### Involución (matemática)

  * F es una involución si F(F(x)) = x, o sea F-1 = F
  * XOR: es una función involutiva.


Formas de Seguridad de un algoritmo criptográfico

  1. Seguridad Ocultamiento: Oculto el sistema
  1. Seguridad Condicional: Los que te pueden escuchar no tienen las herramientas para romper tu sistema
  1. Seguridad Probable: No puedo demostrar su seguridad, pero todavía nadie lo rompió
  1. Seguridad Computacional: El sistema no es seguro pero ninguna máquina lo puede romper en este momento
  1. Seguridad Incondicional: (Cifrado de Vernan o One time pad o Cuaderno de uso único)




