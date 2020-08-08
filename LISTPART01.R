



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

composta2 = list(1:10,c("Skank2","capital inicial","Perlla"),rnorm(10))
composta2[1]
composta2[2]
 #ao executar este comando abaixo, exibirá o segundo elemento da listaa

composta2[2][1] ="monica"
composta2[2][1]
composta2[3][1]

#nomeaR os elementos da lista
names(composta2) = c("inteiro","caracteres","numericos")
vet = 1:4
vetChar = c("A","B","C","D")

lst = list(numeros = vet, letras = vetChar)
lst

lst2 = list(element = 3:5, element2 = c(7.2,3.5))
lst2

names(lst2) = c("inteiros","float")
lst2$float #esta linha retorna os valores 7.2 e 3.5
length(lst2$float) #retorna valores floats da lista 2
length(lst2)
lst2

lst2[1]
lst[2]


#extraindo elemento especifico da lista
lst$letras[2]
mode(lst$letras) #caracter
mode(lst$numeros)

#combinar lista
lst1 =  c(lst,lst2) #c pssando as duas listas
lst1
#transformando vetor em lista
vetor = c(1:3)
vetor = as.list(vetor)
vetor

#unindo dois elementos de uma matriz em um vetor
m = matrix(1:4, nrow = 2)
m

v = c(1:9)
v
lst2 = list(m,v)
lst2
