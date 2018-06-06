# Error en estado estable

## Para un Sistema de Control de Lazo Abierto (SCLA)

```
Theta(i) -> GT -> Theta(o)

Error = Theta(i) - Theta(o)

Theta(o) = Theta(i) . GT

Error = (1- GT) . Theta(i)


Ess = Error en estado estable =  lim   E(t)
                                t-> oo

Ess  =  lim    s . E(s)   =   lim  s . (1-GT) . Theta(i)
       s -> 0                s -> 0
```

## Para un Sistema de Control de Lazo Cerrado (SCLC)

### Con Realimentacion Unitaria

```
Error = (1- (G/(1+G))) . Theta(i)
      = (1/(1+G)) . Theta(i)
```

### Con Realimentacion con `H`

Go = G/(1+G[H-1]

```
Error = (1/(1+Go)) . Theta(i)
```

Ess  =  lim    s . E(s)   =   lim  s . (1/(1+Go)) . Theta(i)
       s -> 0                s -> 0







