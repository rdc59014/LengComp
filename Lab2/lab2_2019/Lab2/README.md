
# Laboratorio Lenguajes y Compiladores #

## Enunciado ##

Extender la implementación de la semántica denotacional para un lenguaje simple
de expresiones aritméticas y booleanas del Lab1 con variables enteras.

**Tarea**
Extender la sintaxis abstracta con un constructor para las variables
representadas con el tipo String y re-definir la función semántica

                           sem :: Expr dom -> dom

que implementa el significado de estas expresiones.

1. Agregar el constructor para variables.
2. Re-definir la función semántica considerando que ahora necesitamos un
   estado para dar la denotación de las variables.
3. Implementar el "estado vacío".
4. Escribir y ejecutar algunos ejemplos.

## Uso ##

```console
$ ghci Lab2.hs
```
