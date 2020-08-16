#!/usr/bin/env Rscript

# Las variables pueden contener (.) y pueden comenzar con (.)
# Las variables pueden asignarse de distinta forma
# Forma 1
var.name=10
# Forma 2
.varname<-20
# Forma 3
30->varname

30->>var.name_123
cat(sprintf("Variable 1: %d\nVariable 2: %d\nVariable 3: %d\n",var.name,.varname,varname))
print(ls())
print(class(as.integer(var.name)))
print(typeof(var.name))
