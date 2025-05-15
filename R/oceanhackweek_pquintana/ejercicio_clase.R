data <- read.csv(file="d_estuary.csv")
#vectores y matrices
#solo puede tener datos de un mismo tipo

a <- 1:10
m <- matrix(data=rnorm(1000,mean=10,sd=1),nrow = 5)
m
class(m)
class(a)
vec_letras <- c("b","b","a","a")
vec_letras
class(vec_letras)

e <- a > 5
class(e)
e

#data.frame
datos <- data.frame(talla=rnorm(10,165,25),sexo =c(rep("M",4),rep("H",6)))
datos
class(datos)

#lista
todo <- list(dataframe=datos,matrix=m,integer=a)
todo
todo$dataframe
todo$dataframe$talla[todo$dataframe$sexo=="H"]


#importar datos 
## Ir a carpeta de datos
setwd("Ruta")
dat <- read.table("archivo",header = TRUE,sep = "/t", skip=4, dec=",") #skip: saltar filas
summary(dat)

#Importar archivos.xlsx
library(readxl)
data2 <- read_excel("Parametros_fisico_quimicos.xlsx",sheet = 1)
summary(data2)
data3 <- read_excel("Parametros_fisico_quimicos.xlsx",sheet=1, skip=2)
data3

