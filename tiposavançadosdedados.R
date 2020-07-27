
setwd("E:/Natanael/tsi/3periodo/Nova pasta(5)/AulasR")



#vetor
#1dimenssão
v1=c(1:20)
v1
length(v1)
class(v1)
typeof(v1)

#2 dimensão

matrix = matrix(1:20, nrow = 2)
matrix

length(matrix)
mode(matrix)
typeof(matrix)


#3 dimensão 
array=array(1:5 , dim = c(1,2,3) )
length(array)
mode(array)
typeof(array)



#dataframe é uma matrix com tipos diferentes de dados

View(iris)
length(iris)
class(iris)
typeof(iris)


#diferentes tipos de objetos, tipos de  dados diferentes e comuns
list = list(x= matrix, b= v1)
list
length(list)
class(list)
typeof(list)



#funções sao vistas como objetos em r

funct= function(x ){
  V = x+x
  return(V)
}

funct(5)

class(funct)
objects() #listar objects
rm(array,funct())
