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

  #!/bin/Rscript
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

1. Logical
2. Complex
3. Numeric
4. Character
5. Integer
6. Raw
