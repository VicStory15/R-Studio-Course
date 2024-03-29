#=================================================================================
#======================= TRATAMIENTO DE DATOS CON R STUDIO =======================
#---------------------------------------------------------------------------------
#   AUTOR : Victor Quilca
#    TEMA : Calculadora R
# RESUMEN : En esta secci�n veremos con R Studio nos ayuda con operaciones
#           matem�ticas, tal como lo har�a una calculadora.
#     OBS : Para ejecutar la l�nea de c�digo......... Control + Enter
#           Para limpiar la consola.................. Control + l
#           Para limpiar el Enviroment, ejecutar..... rm(list=ls())
#=================================================================================

#=Signos de operaciones matem�ticas
#---------------------------------------------------------------------------------
# Suma...(+)   Multiplicaci�n.(*)  Potencia..(^)          Resto div entera..(%%)
# Resta..(-)   Divisi�n.......(/)  Cociente entero..(%/%)
#---------------------------------------------------------------------------------
15+48
2^4
49%%7

#=Funciones num�ricas
#---------------------------------------------------------------------------------
# Raiz cuadrada..(sqrt)   Exponencial..(exp)        Log natural..(log)
# Log base 10....(log10)  Log base a...(log( ,a))   n!...........(factorial)
# Combinatoria...(choose)
#---------------------------------------------------------------------------------
sqrt(49)      #raiz de 49
exp(5)        #e elevado a la 5
log(exp(1))   #ln(e)
log10(1000)   #logaritmo en base 10
log(14,5)     #logaritmo de 14 en base 5
factorial(6)  #6!
choose(7,2)   #Combinatoria de 7 en 2
#---------------------------------------------------------------------------------
# Seno.......(sin)   Coseno......(cos)    Tangente...........(tan)
# ArcSeno....(asin)  ArcCoseno...(acos)   ArcTangente........(atan)
# Valor absoluto...(abs)
#---------------------------------------------------------------------------------
sin(90)
sin(pi/2)
abs(-45)

#= pi esta por defecto
pi/3

#= round(x, n) redondea el valor de x a n cifras decimales.
round(pi/3, 3)

#= floor(x) redondea x a un n�mero entero por defecto.
floor(pi/3)
floor(2.4)

#= ceiling(x) redondea x a un n�mero entero por exceso.
ceiling(pi/3)
ceiling(2.4)

#= trunc(x) da la parte entera de x.
trunc(pi/3)
trunc(2.4)

#= variable=valor asigna el valor a la variable. 
#= Otras construcciones equivalentes son variable<-valor y valor->variable.
edad=14
edad2<-16
20->edad3

#= funci�n=function(variables){instrucciones} define la funci�n de variables
#= las especificadas entre los par�ntesis mediante las instrucciones 
#= especificadas entre las llaves.

f_fact <- function(x){
  res<-1
  for(i in 1:x){
    res<-res*i
  }
  return(res)
}

f_fact(4)    #Evaluando nuestra funci�n creada
factorial(4) #Funci�n propia del R
