#!/usr/bin/env Rscript

# Crear un data frame que contenga nombre edad y sexo

nombre<-c("Melani","Adrian","Raymundo")
edad<-c(22,21,21)
sexo<-c("F","M","M")

dataframePersona<-data.frame(nombre,edad,sexo)
print(dataframePersona)
