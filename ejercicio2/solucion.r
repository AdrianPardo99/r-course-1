#!/usr/bin/env Rscript

# Solucion
# 1
vector1<-c(4,10,5,3)
vector2<-c(2,8,25,14)
matriz1<-rbind(vector1,vector2)
cat("1\nVector 1: ",vector1,"\nVector 2: ",vector2,"\nMatriz 1:\n")
print(matriz1)
cat("\nMatriz 2:\n")
# 2
matriz2<-matrix(c(1:24),nrow=6)
print(matriz2)
# 3 4
cat("\nElemento: ",matriz2[3,4],"\nMatriz nueva: \n")
matriz3<-matrix(matriz2[1:3,1:2],ncol=2)
print(matriz3)
# 5
matriz3<-cbind(matriz3,rowSums(matriz3))
cat("Nueva matriz: \n")
print(matriz3)
