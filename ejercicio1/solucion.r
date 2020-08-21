#!/usr/bin/env Rscript

# Solucion
# 1
ventas<-c(120,140,90)

cat("1 Vector ventas: ",ventas,"\n")
# 2
c("Enero","Febrero","Marzo")->names(ventas)
cat("2: \n")
print(ventas)
# 3
cat("3 Media: ",mean(ventas),"\n")
# 4
ventasNew<-ventas[ventas>100]
cat("4 Nuevo vector: ",ventasNew,"\n")
# 5
cat("5 Valor mayor: ",max(ventas))
