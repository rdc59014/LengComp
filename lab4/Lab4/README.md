# Laboratorio Lenguajes y Compiladores #

## Enunciado ##

Implementar la semántica denotacional para el lenguaje imperativo simple con
fallas (LIS + Fallas) extendiendo el lenguaje imperativo extremadamente simple
(LIES) con while, newvar, fail y catch.

**Tarea**
Extender la sintaxis abstracta con los constructores correspondientes y 
re-definir la función semántica

                           sem :: Expr dom → Σ → dom

que implementa el significado de estas expresiones; implementar las instancias
de la clase DomSem para Int, Bool y Σ'.

0.5 - Acomodar los constructores de manera que su tipo cargue con información
      más precisa. Salvo ya se les haya ocurrido hacerlo ;)
      Por ejemplo, originalmente teníamos definido el constructor
      Mas :: (Expr a) -> (Expr a) -> (Expr a)
      utilizando GADTs podemos escribir su tipo de forma más precisa
      Mas :: (Expr Int) -> (Expr Int) -> (Expr Int)
1 - Agregar los constructores utilizando GADTs
2 - Implementar las funciones estrella (*.), daga (†.) y mas (+.).
3 - Implementar la función semántica para las nuevas construcciones.
4 - Escribir y ejecutar algunos ejemplos.

## Uso ##

```console
$ ghci Lab4.hs
```
