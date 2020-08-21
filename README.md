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
Cualquiera de estas dos opciones permitira la ejecución como aplicación, ante todo ello la extensión del archivo es con terminación ".R", ".rdata", ".rds", ".rda".

# R vs Python #
Si bien Python es poderoso lenguaje de programación el cual permite trabajar con distintos módulos dedicados a la ciencias y la investigación, recordemos lo que nos dice la descripción y fin del mismo.

__Python__

* Licencia Open Source
* Lenguaje interpretado
* Propósito general
* Desarrollo rápido
* Desarrollo escalar
* Usuarios principales: Programadores y desarrolladores

__R__

* Licencia Open Source
* Lenguaje precompilado
* Propósito en ciencias de datos, estadística e investigación
* Desarrollo enfatizado en modelado matemático
* Desarrollado por matemáticos y físicos
* Usuarios principales: Estudiantes, estadísticos, investigadores

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

__For quick__
```R
  varI=0:10
  varI
  # Output
  [1]  0  1  2  3  4  5  6  7  8  9 10
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

___Input___

__Scan function__

La función de scan puede leer datos reales a partir del estándar input o del flujo de entrada de un archivo, para la lectura a partir  de teclado es necesario ejecutarlo a partir de la consola interactiva del lenguaje R, el cual permite crear un arreglo de números reales hasta que el input sea un newline, la lectura puede hacerse de las siguientes formas
```R
  z<-scan()

  In the interactive console we can write
  [1] 10 20 30 40       # Ingresa 4 datos a la variable z
  [5] 33.3
  [6]                   # Enter y terminara de ingresar los datos
  z                     # print in the interactive console
  [1] 10 20 30 40 33.3
```
___Scan function for read characters___

Ahora para que la lectura a partir de teclado de caracteres es necesario añadir un nuevo parámetro el cual permite leer caracteres con la misma idea con la que se leen los números reales
```R
  c<-scan(what=" ")
  In the interactive console
  [1] aa bb cc dd       # Ingresa 4 datos a la variable c
  [5] abcdf
  [6]                   # Enter y terminara de ingresar los datos
  c
  [1] aa bb cc dd abcdf
```

___Scan function for read a file___

Ahora ya que sabemos leer datos desde teclado ya sea valores reales o valores de carácter, por lo que para leer datos a partir de un archivo solo es añadir un nuevo parámetro en la instrucción de la función
```R
  fileData<-scan(file=<NameFile>,what="character")  # Lectura de datos en formato character
  fileData
  In the interactive console output
  [1] "data-1"  "data-2"  "data-3"  "data-4"
  [5] "data-5"  ...
```
Hay otros parámetros que permiten realizar diversas tareas como el omitir datos que no son necesarios de un archivo, el separar en estructuras lista los datos por linea, y mucho más.

__Readline function__

Readline es un lectura de datos de tipo carácter la cual puede venir acompañado de un mensaje, por otro lado estos datos se pueden separar en caso de ser números como una lista de datos y de esa estructura puede realizarse la lista de datos enteros o de lo que se necesite
```R
  variableRead<-readline(prompt="Output for read line in the interactive console: ")
  splitList<-strsplit(variableRead," ")       # Split spaces
  data<-as.numeric(unlist(splitList))         # Datos a tipo númerico
```

___Output___

__Paste function__

La función paste permite la concatenación de dos tipos de datos los cuales son mostrados en la salida estándar
```R
  paste("val",1,"val",30,"val")
  # Output
  [1] "val 1 val 30 val"

  paste("A",1:10)
  # Output
  [1] "A 1"  "A 2"  "A 3"  "A 4"  "A 5"  "A 6"  "A 7"  "A 8"  "A 9"  "A 10"

  paste("A",1:10,sep='')
  # Output
  [1] "A1"  "A2"  "A3"  "A4"  "A5"  "A6"  "A7"  "A8"  "A9"  "A10"

  Vector in R with paste
  c(data,data1)     # Create a vector
  paste(c(1:10),collapse=" ; ")
  # Output
  [1] "1;2;3;4;5;6;7;8;9;10"
```
__Paste0 function__

Así como la función paste, paste0 funciona igual pero con un separador en blanco así como el ejemplo de sep=''
```R
  paste0("A",1:10)
  # Output
  [1] "A1"  "A2"  "A3"  "A4"  "A5"  "A6"  "A7"  "A8"  "A9"  "A10"
```
__Cat function__

Función de salida a pantalla la cual permite mostrar datos los cuales son separados por un espacio, conforme al orden en que es utilizado:
```R
  age=21
  name="Adrian"
  cat("Hi my name is ",name,", I'm ",age," years old\n")
```
También esta función puede servir para guardar datos en archivos csv, los cuales permiten guardar desde una numeración sencilla hasta una clasificación de datos.
```R
  cat(1:10,file="nums.csv",sep="\n",append="FALSE")
  # En el archivo, Output
  1
  2
  3
  4
  5
  6
  7
  8
  9
  10
```
# Operadores aritméticos #
| Símbolo | Operación |
| ------- | --------- |
|    +    | Adición/Suma |
|    -    | Sustracción/Resta |
|    *    | Producto/Multiplicación |
|    /    | División |
|   **    | Potencia |
|    ^    | Potencia |
|   %%    | Modulo   |
|  %/%    | División entera |

# Operadores relacionales #
Los operadores relaciones se utilizan en función de realizar operaciones lógicas las cuales devuelven un valor booleano TRUE o FALSE dependiendo de como se planea realizar en la aplicación o script
| Símbolo | Operación |
| ------- | --------- |
|    <    | Menor que |
|    >    | Mayor que |
|   <=    | Menor igual que |
|   >=    | Mayor igual que |
|   ==    | Igual que |
|   !=    | Distinto que |

# Operadores lógicos #
Los operadores lógicos funcionan para realizar el álgebra booleana entre datos booleanos.
| Símbolo | Operación |
| ------- | --------- |
|   \|    | Compuerta OR para cada dato |
|  \|\|   | Compuerta OR para el primer dato del vector  |
|   \&    | Compuerta AND para cada dato |
| \&\&    | Compuerta AND para el primer dato del vector |
|    !    | Compuerta NOT para cada dato |

# Operadores de asignación #
Los operadores de asignación funcionan para asignar valores a diversas variables, en las cuales puedes almacenar para más tarde operar con ellas
| Símbolo | Operación |
| ------- | --------- |
|  \-\>   | Asignación hacia la derecha |
|  \-\>\> | Asignación hacia la derecha |
|  \<\-   | Asignación hacia la izquierda |
| \<\<\-  | Asignación hacia la izquierda |

# Operadores miscellaneous #
Estos operadores ayudan en la escritura asignación rápida en variables y distintas cosas a la hora de trabajar con el código.
| Símbolo | Operación |
| ------- | --------- |
|    :    | Operación de secuencia de datos de un valor x a un valor y |
|   %in%  | Este operador funciona para ver si un elemento pertenece o no a un vector |
|   %*%   | Este operador funciona para multiplicación de matrices |

# Estructuras de datos #
__Vectores__

Es una estructura de datos la cual almacena un tipo de dato cualquiera que permite operar más tarde con los mismos datos almacenados
```R
  # Creación de un vector: para crear un vector es necesario usar la función c()
  vec<-c(1,2,3,4,5,6)
  # Para ver el tamaño del vector:
  length(vec)
  # Tambien se puede crear un vector a partir de la Operación de secuencia
  vec<-(1:6)

  # Creación de un vector a partir de una secuencia
  1->initVal
  20->finalVal
  1.5->increment
  vec<-seq(initVal,finalVal,by=increment)
  vec
  # Output
  [1]  1.0  2.5  4.0  5.5  7.0  8.5 10.0 11.5 13.0 14.5 16.0 17.5 19.0

  # Acceso a datos del vector
  initVar=3
  vec[initVar]      # Acceso al valor de la variable initVar
  # Output
  [1] 4


  vecVar=c(1,3)
  vec[vecVar]
  # Output
  [1] 1 4

  # Para modificar los datos puedes usar
  vec[initVar]<-100 # Modificación del vector en la posición initVar con 100

```
___Utilidad___
* Inteligencia artificial
* Modelo de alimentación para Deep Learning
* Soporte para algoritmos en procesos de Machine Learning
* Procesamiento de texto
* Procesamiento de imágenes
* Modelo de alimentación para Redes Neuronales

__Listas__

Es una estructura la cual puede contener datos de distintos tipos, por lo cual genera una gran diferencia con respecto a la estructura vector, el cual internamente contiene vectores
```R
  listVar=list(c(1:10),c("a","b","c"))
  listVar
  # Output
  [[1]]
   [1]  1  2  3  4  5  6  7  8  9 10

  [[2]]
  [1] "a" "b" "c"

  # Accediendo a un elemento de la lista
  listVar[1]
  # Output
  [[1]]
  [1]  1  2  3  4  5  6  7  8  9 10

  # Accediendo al conjunto vector de la lista
  listVar[[1]]
  # Output
  [1]  1  2  3  4  5  6  7  8  9 10

  # Para acceder a un dato en particular de un vector
  listVar[[2]][2]
  # Output
  [1] "b"

  # Muestra la estructura de arbol de la lista:
  str(listVar)
  # Output
  $ : int [1:10] 1 2 3 4 5 6 7 8 9 10
  $ : chr [1:3] "a" "b" "c"

  # Modificando elemento en particular inicio reescribiendo el vector
  listVar[1]=10
  listVar
  # Output
  [[1]]
   [1]  10

  [[2]]
  [1] "a" "b" "c"

  # Modificación de un vector de elementos posición
  listVar[[1]]=c(10:20)
  listVar
  # Output
  [[1]]
  [1] 10 11 12 13 14 15 16 17 18 19 20

  [[2]]
  [1] "a" "b" "c"

  # Modificando un solo elemento de la lista
  listVar[[2]][2]="d"
  listVar
  # Output
  [[1]]
  [1] 10 11 12 13 14 15 16 17 18 19 20

  [[2]]
  [1] "a" "d" "c"

  # Algunas otras operaciones de las listas son
  # - Nombrar columna de la lista
  names(listVar)<-c("Numeros","Letras")
  # - Fusionar lista de elementos (listas de listas)
  newList<-c(list1,list2)
  # - Convertir lista a vector
  vectorList<-unlist(newList)
  # - Convertir vector a lista
  newList1<-as.list(vectorList)

```
__Matrices__

Es una estructura de datos la cual almacena datos de manera bidimensional, es decir, cuentas con un acceso a los datos marcando 2 dimensiones
```R
  # Creación de la matriz
  vector<-c(11:20)
  numFilas<-5
  numColumnas<-2
  var<-matrix(vector,numFilas,numColumnas)
  var
  # Output
        [,1] [,2]
  [1,]   11   16
  [2,]   12   17
  [3,]   13   18
  [4,]   14   19
  [5,]   15   20

  # Crear matriz añadiendo los datos columna a columna
  A<-cbind(c(5,6,7),c(8,9,10))
  A
  # Output
        [,1] [,2]
  [1,]    5    8
  [2,]    6    9
  [3,]    7   10

  # Crear matriz añadiendo los datos fila a fila
  B<-rbind(c(5,6,7),c(8,9,10))
  B
  # Output
        [,1] [,2] [,3]
  [1,]    5    6    7
  [2,]    8    9   10


  # Acceder a datos por columna
  A[,1]
  # Output
  [1] 5 6 7

  # Acceder a datos por fila
  A[1,]
  # Output
  [1] 5 8

  # Acceder a un dato con fila,columna
  A[2,1]
  # Output
  [1] 6


  # Modificar datos a partir de la columna
  A[,1]<-c(10:12)
  A
  # Output
        [,1] [,2]
  [1,]   10    8
  [2,]   11    9
  [3,]   12   10

  # Modificar datos a partir de la fila
  A[2,]<-c(2:3)^2
  A
  # Output
        [,1] [,2]
  [1,]   10    8
  [2,]    4    9
  [3,]   12   10

  # Modificar un dato en particular con fila,columna
  A[2,1]<-25
  A
  # Output
        [,1] [,2]
  [1,]   10    8
  [2,]   25    9
  [3,]   12   10

  # Algunas otras operaciones de las listas son
  # - Suma/Resta de matrices N*N +/- N*N
  A+A
  A-A
  # - Multiplicación de matrices (N*M)(M*S)
  A%*%B
  # - Nombrar filas y columnas
  rownames=c("name1","name2","name3")
  colnames=c("col1","col2")
  dimnames(A)<-list(rownames,colnames)
  A
    # Output
          col1 col2
    name1   10    8
    name2   25    9
    name3   12   10
    # Cabe destacar que en la asignación de nombres de fila y columna se puede hacer
      # desde la creación de la matriz
    matriz1<-matrix(datos,numFilas,numColumnas,dimnames=list(vectorFilas,vectorC))

  # - Matriz transpuesta
  t(A)
    # Output
            name1 name2 name3
    col1    10    25    12
    col2     8     9    10
  # - Matriz inversa (Matriz cuadrada)
  A<-matrix((1:16),4,4)
  A[,2]<-c(2,6,7)
  iA<-solve(A)
  iA
    # Output
                [,1]        [,2]       [,3]
    [1,]  0.1111111 -1.72222222  1.4444444
    [2,] -0.3333333  0.66666667 -0.3333333
    [3,]  0.2222222  0.05555556 -0.1111111
  A
    # Output
          [,1] [,2] [,3]
    [1,]    1    2    7
    [2,]    2    6    8
    [3,]    3    7    9

  # - Determinante de la matriz
  det(A)
    # Output
    [1] -18

  # - Obtener la dimensión de la matriz
  dim(A)
    # Output
    [1] 3 3

  # - Sumar filas y obtener promedio por fila
  rowMeans(A)
    #Output
    [1] 3.333333 5.333333 6.333333

  # - Sumar columnas y obtener promedio por columna
  colMeans(A)
    # Output
    [1] 2 5 8

```
__Array__

Es una estructura que permite almacenar datos de una dimensión de N elementos o en su defecto puede existir arreglos de M dimensiones con A,B,C espacios en memoria
```R
  arr<-array(c(11:22),dim=c(2,3,2))
  arr
  # Output
    , , 1

          [,1] [,2] [,3]
    [1,]   11   13   15
    [2,]   12   14   16

    , , 2

          [,1] [,2] [,3]
    [1,]   17   19   21
    [2,]   18   20   22

  # Al igual que las matrices se puede añadir nombre de filas y columnas con la misma función


  # Acceder a la primer parte de la dimensión
  arr[1,,]
  # Output
          [,1] [,2]
    [1,]   11   17
    [2,]   13   19
    [3,]   15   21

  # Acceder a la segunda parte de la dimensión
  arr[,1,]
  # Output
         [,1] [,2]
    [1,]   11   17
    [2,]   12   18

  # Acceder a la tercer parte de la dimensión
  arr[,,1]
  # Output
          [,1] [,2] [,3]
    [1,]   11   13   15
    [2,]   12   14   16

  # Acceder a dos dimensiones forma 1
  arr[1,1,]
  # Output
    [1] 11 17

  # Acceder a dos dimensiones forma 2
  arr[1,,1]
  # Output
    [1] 11 13 15

  # Acceder a dos dimensiones forma 3
    [1] 11 12

  # Acceder a un elemento en particular
  arr[1,1,1]
  # Output
    [1] 11

  # Para modificar sus datos podemos hacerlo de forma particular o en vectores dependiendo
    # el tamaño de como es repartido.
```

__Data frames__

Es una estructura de datos la cual esta especificada para hacer uso de investigadores los cuales tienen una pequeña especificación la cual es:
* Filas (Observaciones)
* Columnas (Mediciones)

Por lo tanto la estructura Data Frame es bidimensional la cual su contenido son vectores heterogéneos, en los cuales podemos hacer las mismas operaciones que hacíamos con las estructuras anteriores

```R
  # Creación
  data_frame<-data.frame(c(1,2,3), c("X","Y","Z"),c("TRUE", "FALSE", "TRUE"))
  data_frame
  # Output
      c.1..2..3. c..X....Y....Z.. c..TRUE....FALSE....TRUE..
    1          1                X                       TRUE
    2          2                Y                      FALSE
    3          3                Z                       TRUE


  # Acceso en la primer dimensión
  data_frame[1,]
  # Output
      c.1..2..3. c..X....Y....Z.. c..TRUE....FALSE....TRUE..
    1          1                X                       TRUE

  # Acceso en la segunda dimensión
  data_frame[,1]
  # Output
  [1] 1 2 3

  # Acceso a un solo dato
  data_frame[1,1]
  # Output
  [1] 1

  # Para eliminar datos
    # Para eliminar solo hay que acceder a la columna la cual se asignara a NULL

  # Podemos añadir datos a partir de rbind

  # Cuando accedemos a una posición en la cual no hay datos del data_frame obtendremos un valor NULL


  # Una modificación a partir de la columna es el siguiente ejemplo
  data_frame[,1]<-c(1:3)*10
  data_frame
  # Output
      c.1..2..3. c..X....Y....Z.. c..TRUE....FALSE....TRUE..
    1         10                X                       TRUE
    2         20                Y                      FALSE
    3         30                Z                       TRUE
```

# If-Else #
Es una estructura lógica de decisión la cual permite ejecutar bloques de código los cuales

```R
  a<-readline(prompt="Enter a number: ")
  if(a>0){
    print("Positive number")
  }else if(a==0){
    print("Zero")
  }else if(a<0){
    print("Negative number")
  }

  # Cuando el programa sea ejecutado dependiendo de la entrada es lo que mostrara
    # El bloque logico If-Else
```

# Ayuda y documentación

R siendo un lenguaje catalogado por muchos como un lenguaje que se caracteriza por tener una curva de aprendizaje acorde a la paquetería y módulos que son instalados externamente, es decir, puede ser desde lo más sencillo hasta lo más complicado, cuenta con una función que despliega la documentación y ayuda con respecto aun tipo de dato o función.

```R
  # Para desplegar dicha documentación basta con
  help("ls")
  help("vector")
  help("function or value")

  # Forma 2
  ??print
  ??vector

```
