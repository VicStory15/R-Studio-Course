#=================================================================================
#======================= TRATAMIENTO DE DATOS CON R STUDIO =======================
#---------------------------------------------------------------------------------
#   AUTOR : Victor Quilca
#    TEMA : Carga de datos
# RESUMEN : En esta sección veremos con R Studio la forma de cargar nuestros datos.
#     OBS : Para ejecutar la línea de código......... Control + Enter
#           Para limpiar la consola.................. Control + l
#           Para limpiar el Enviroment, ejecutar..... rm(list=ls())
#=================================================================================

#1ero - Fijar nuestro directorio de trabajo donde estarán las bases
#---------------------------------------------------------------------------------
getwd() #Esto nos dará la ruta en la cual estamos trabajando
setwd("D:/R Studio/Tratamiento de datos con R Studio/Bases")
#Copiamos la ruta donde están nuestras bases. Ojo: usar /

#2do  - Cargamos nuestra base de datos
#---------------------------------------------------------------------------------

#================================= ARCHIVOS TXT ==================================

base1<-read.delim("Employee-data.txt", #Nombre del archivo
                  sep = "\t", #Separador, en este caso es TAB
                  header = TRUE) #Si no tiene encabezado colocar FALSE
str(base1) #Estructura de la base

#.................................................................................

base2<-read.csv("Employee-data.txt", #Nombre del archivo
                sep = "\t", #Separador, en este caso es TAB
                header = TRUE, #Si no tiene encabezado colocar FALSE
                stringsAsFactors = FALSE) #Para que las cadenas de textos no carguen 
                                          #como factores
str(base2) #Estructura de la base


#================================= ARCHIVOS CSV ==================================

auto <- read.csv("auto-mpg.csv", #Nombre del archivo
                 sep = ",", #Separador, en este caso es la coma
                 header = TRUE) #Si no tiene encabezado colocar FALSE

#Nota: También se puede omitir los 2 ultimos parámetros, pues estos estan por defecto
auto2 <- read.csv("auto-mpg.csv")
rm(auto2) #Con rm() removemos archivos que hayamos creado

str(auto)   #Estructura de la base
names(auto) #Nombre de las columnas de la base

#.................................................................................

auto_no_header<-read.csv("auto-mpg-noheader.csv", #Nombre del archivo
                         sep = ",", #Separador, en este caso es la coma
                         header = FALSE, #Como no tiene encabezado : FALSE
                         stringsAsFactors = FALSE) #Para que las cadenas de textos 
                                                   #no carguen como factores

#.................................................................................
#En caso quisieramos colocar nosotros mismos el nombre a las variables, sería:

auto_custom_header<-read.csv("auto-mpg-noheader.csv",
                             header = F,
                             col.names = c("Numero", "MillasxGaleon","Cilindros",
                                           "Desplazamiento","CaballoPotencia","Peso",
                                           "Aceleración","Año","Modelo"),
                             stringsAsFactors = F
                             )

str(auto_custom_header)     #Estructura de la base
names(auto_custom_header)   #Nombre de las columnas de la base
head(auto_custom_header,4)  #Mostrar las primeras 4 filas de la base
summary(auto_custom_header) #Resumen estadístico de las variables 

#.................................................................................
# Muchas veces nuestra base presentar NA's y al momento de cargar el archivo al R
# debemos decirle que caracteres ("","N/A","NULL",etc) serán NA's

misg_data1 <- read.csv("missing-data.csv",header = T,sep = ",")
misg_data2 <- read.csv("missing-data.csv",header = T,sep = ",",na.strings = "")

head(misg_data1)
head(misg_data2)

str(misg_data1)
str(misg_data2)

summary(misg_data1)
summary(misg_data2)

#================================= ARCHIVOS EXCEL ==================================

install.packages("readxl")
library("readxl")
base3<-read_excel("Employee-data.xlsx", #Nombre de la base
                  sheet = 1) #Hoja a cargar


#================================= ARCHIVOS SPSS ==================================
install.packages("foreign")
library(foreign)
muestra<-read.spss(file.choose(), #Buscamos nuestro archivo MuestraEnaho
                   use.value.labels = F, #No usar etiquetas
                   to.data.frame = T) #Convertir a data frame
str(muestra)

#.................................................................................

install.packages("haven")
library(haven)

muestra2 <- read_sav(file.choose())
str(muestra2)

