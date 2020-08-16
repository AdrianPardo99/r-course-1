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
