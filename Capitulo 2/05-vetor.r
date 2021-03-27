#vetor de string na qual o r armazena como caracter
vetorCaracter = c("Data","Science","Academy")
vetorCaracter

#vetor de floats grava internamente como o tipo double
vetornumerico = c(1.30,2.60,5.21)
vetornumerico


#numero complexo

numcomplex = c(5+3i,2.3+6i)
numcomplex

#vetor logico

logico = c(TRUE,FALSE,TRUE,FALSE)
logico

vetor

#vetor inteiro
vetorinteiro = c(2,4,6) 
vetorinteiro

#vetor usando seq

?seq
vetor2 = seq(1:10)
vetor2

# formas de criar vetor c(), rep(), seq()
#usando rep()
vetor = rep(1:5)
vetor
is.vector(vetor2)
!is.vector(vetor2)

a = c("Ana","Carolina","Rita","Iracema")
a[0]
a[1]
a[2]
a[3]
a[4]
a[5]
#combinado vetores
v1 = c(2,3,5)
v2 = c("aa","bb","cc")
c(v1,v2)

#operacoes com vetores

vet1 = c(1,2,3,4)
vet2 = seq(1:30)
vet3 = rep(1,2,3)#repete os valores do vetor

vet1+vet3
vet3
c(vet1,vet2,vet3)

#operacores de vetores
?rep #essa função replica os elementos do vetor
vetor1 = rep(1,2,3,4,5)
vetor2 = seq(1:5)
vetor2

?seq
vetor3= c(1:5)
vetor1
vetor1 + vetor1

vetorseq = seq(1:10)
vetorseq

vetorlong = seq_along(1:10)
vetorlong

 seq_len(50)
 
 vetora = c(1,2,3,4,5)
 vetorb = c(1,2,3,4,5)
 
 vetora*5
 vetora/5 

 vetora + vetorb   
 vetora - vetorb 
 vetora*vetorb 
vetora/vetorb 
#somando vetores com numero diferentes de elementos
alfa = c(10,20,30)
alfa
beta =  c(1,2,3,4,5,6,7,8,9)
alfa+beta

#vetor nomeado

nome = c("NatanaEL", "GUEDES")
nome

names(nome) = c("Nome","Sobrenome")
nome
nome["Nome"]


