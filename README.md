# Lenguaje de lógica proposicional usando Lex y Yacc

__Taller 2, Lenguajes de programación__
##1. Lexer
* Lo primero que haremos para el lenguaje es será declarar el header en el que declararemos todos los operadores que utilizaremos dentro del lenguaje, además de los terminales y las sentencias.

  ![taller2.h](/headerTaller.png)

* Después crearemos el archivo lex, este se divide en tres secciones, separadas por lineas que contienen los simbolos: "%%"

  * ```
  Sección de delaraciones
%%
Sección de reglas
%%
Sección de código en C
```
    * En la **sección de declaraciones** se definen los macros y se importan los archivos de cabecera escritos en *C*. Este código en *C* debe ir entre los simbolos %{ %}.

    * En la **sección de reglas** se asocian patrones a sentencias en *C*. Estos patrones son expresiones regulares. Cuando el *lexer* encuentra un texto en la entrada que es asociable a un patron dado, ejecuta el código en *C*. Esta es la sección más importante.

    * En la **sección de código C** se encuentran las sentencias y funciones que serán copiadas en el archivo fuente generado. Estas sentencias contienen el código llamado por las reglas en la sección anterior.

  * ![taller2.l](/lexTaller.png)
