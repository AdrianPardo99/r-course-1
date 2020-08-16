# Curso de R en Udemy #
R es un lenguaje dedicado en la investigación, ciencias de datos, el cual tiene como proposito el modelar y mostrar sets de datos los cuales pueden usarse en áreas como Machine Learning, Bioinformática, Matemáticas, Física, etc.

El lenguaje ha tenido presencia en el área Bancaria, Investigación, Ciencias, etc.

# Instalación #
__Windows__

Para instalar este lenguaje en conjunto de su IDE, puedes hacer [click aquí](https://cran.r-project.org/bin/windows/base/), para finalmente añadir las variables de entorno del lenguaje o simplemente descargar RStudio

__Linux__

_Debian_
```bash
  sudo apt-get install r-base r-base-dev -y
```

_RedHat_
```bash
  sudo dnf install 'dnf-command(copr)'
  sudo dnf copr enable iucar/cran
  sudo dnf -y install R R-CoprManager
```

__MACOSx__

Para instalar en este sistema operativo, es necesario descargar el archivo fuente que es compatible con la MAC [click aquí](https://cran.r-project.org/bin/macosx/)

# Sistema de archivo en R #
R siendo un lenguaje cuyo poder es bastante indescriptible, el sistema que maneja de archivo es de tipo script, el cual en caso de ser usado en Sistemas de UNIX podemos añadir la directiva/header para su ejecución automática:
```bash
  #!/usr/bin/env Rscript

  #!/usr/bin/Rscript
```
Cualquiera de estas dos opciones permitira la ejecución como aplicación, ante todo ello la extensión del archivo es con terminación ".R".

# Hints #

__Variables__

Existen diversas formas en las cuales puedes puedes declarar variables
```R
  # Forma 1
  var.name=10

  # Forma 2
  .varname<-20

  # Forma 3
  30->varname
```
Cabe resaltar que en la notación de flecha igual puede realizarse con doble flecha, incluso en la forma de escritura con ".", es necesario saber qué si se utiliza el punto seguido de ello debe escribirse una letra
```R
  .var122323=10     # Valido

  .Var122<<-20      # Valido

  30->>var.name_123 # Valido
```
__Tipos de datos__

En R existen diversos tipos de datos, con los cuales podemos trabajar

| Type | Values |
| ----------- | ----------- |
|  Logical    | True or False |
|  Complex    | a+ib where a and b are numbers |
|  Numeric    | Real values |
|  Character  | Characters and String |
|  Integer    | aL where a is a Integer |
|  Raw        | Raw bits |

__Listar todas las variables del programa__

La bondad de R como lenguaje es que te permite listar las variables que están siendo utilizadas en el script/programa
```R
  print(ls())   # Lista todas las variables
```
__Conocer el tipo de dato de una variable o valor__

Así como algunos lenguajes como lo hace Python, puedes saber el tipo de dato y el tipo de valor equivalente en "C"
```R
  print(class(1000))      # Clase de dato
  print(typeof(1000))     # Tipo de dato
```
__Numeric to Integer__
```R
  varI=as.integer(1000.11)
```
__Integer to Numeric__
```R
  varI=as.numeric(1000L)
```
__Numeric to Complex__
```R
  varI=as.complex(1000.11)
```
__Más acerca del lenguaje__

Si bien existen varias clases que convierten de un tipo de dato a otro, también existen funciones lógicas las cuales permiten saber el tipo de dato con el que se esta trabajando, por otro lado también existen funciones que permiten usar el estándar de salida en pantalla
```R
  print("String")
  print(operation or variable)

  # Para realizar uso del formato de salida de lenguaje C se puede usar las siguientes funciones
  cat(sprint("String description %d",varInteger))
  message(sprint("String description %d",varInteger))

  # También existen otras funciones que permiten realizar esta tarea, para ello esta la doc de R
```
# Funciones input #
