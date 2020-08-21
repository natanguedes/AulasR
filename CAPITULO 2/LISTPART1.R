



getwd()


#usar  list() para criar listas

lista = c("A","B","C")
lista


#lista com vetor
vetor = list(c("A","B"),c("C","D"))
vetor


#matriz dentro de uma lista
matriz =list(matrix(c("A","B","C","D" )), nr=2,"F","G","H","I")
matriz
M2= list(matrix(c("A","B","C","D"),nr=2),list(matrix(c("E","F","G","H"), nr = 2)))
M2
matriz

#lista de inteiros

listinteger = list(1,2,3,4)
listinteger

#lista de float

float =  list(10.2,3.40,8.90)
float

#complexo

complex = list(10-1+4i,5-2+3i,2.4+8i)
complex

#valor lógicos

logic =list(TRUE,FALSE,FALSE,TRUE)
logic

#composta

composta = list("A",1,TRUE)
composta
composta2[2][1]="teste"

composta2 = list(1:10,c("Skank2","capital inicial","Perlla",rnorm(10)))
composta2[1]
composta2[2]
composta2[2][1]
composta2[2][1] ="monica"
composta2
