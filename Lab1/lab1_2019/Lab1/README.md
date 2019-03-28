
# Laboratorio Lenguajes y Compiladores #

## Enunciado ##

Implementar la semántica denotacional para un lenguaje simple de expresiones
aritméticas y booleanas.

**Tarea**
Se provee la sintaxis abstracta de un lenguaje que tiene expresiones de tipo
:entero y expresiones de tipo booleano. Queremos dar una función semántica

                           sem :: Expr dom -> dom

que implemente el significado de estas expresiones.

1. Implemente las dos instancias de la función
2.a. Agregue a la sintaxis abstracta las expresiones enteras para el producto,
     la división, el opuesto.
2.b. Agregue a las expresiones booleanas la negación y la comparación entre
     expresiones enteras
2.c. Extienda las instancias de la función semántica.
3. Escribir y ejecutar algunos ejemplos.

## Uso ##

```console
$ ghci Lab1.hs
```
