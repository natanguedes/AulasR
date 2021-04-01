



getwd()
#vetor de string
vetordecaracter = c("Data","Science","academy")

vetordecaracter

#vetor de float

float = c(1.96,2.87,3.54)
float


#valor complexo

vetcomplex = c(5.2+3i, 4.3+4i)
vetcomplex


#vetor booleano
vet = c(TRUE,FALSE,TRUE,FALSE)
vet

#vetor de inteiro
vetordeinteiro = c(2,4,6)
vetordeinteiro

#utilizando seq()
vetorcomseq = c(1:20)
vetorcomseq

#vetor com rep()
vetor = rep(1:5)
vetor
is.vector(vetor)

#indexar vetores

a = c(1,2,3,4,5)
a

a[1]
a[5]

#vetores
b = c("Data","Science","Academy")
b
b[1]
b[2]
b[3]
b[4]


#combina valores

v1 = c(2,3,5)
v2 = c("a","b","c","d")
c(v1,v2)

#operadores com vetores

x = c(1,2,3,4)
y=c(2,4,5,7)
x*5
x + y
x - y
x*y
x/y

#somando vetores com numero diferente de elementos
alfa = c(10,20,30)
beta = c(1,2,3,4,5,6,7,8,9)
alfa - beta

#vetor nomeado

v = c("Natanael","Guedes")
v
names(v)= c("Nome","Sobrenome")
v

v["Nome"]

