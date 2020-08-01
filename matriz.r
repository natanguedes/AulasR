

getwd()



matrix(c(1,2,3,4,5,6) , nr=2)
matrix(c(1,2,3,4,5,6) , nr=3)
matrix(c(1,2,3,4,5,6) , nr=5)


meusdados = c(1:10)
matrix(data = meusdados, nrow = 5, ncol = 2, byrow = T) 
matrix(data = meusdados, nrow = 5, ncol = 5, byrow = T) 

#Fatiando matrix

m = matrix(c(2,3,4,5), nr =  2)
m

#matrix transposta
t(m)

#matriz inversa

solve(m)
 


#multiplicação de matriz


m = matrix(c(2,3,4,5), nr= 2)
m

m2 = matrix(c(6,7,8,9), nr = 2)
m2

m = m+m2
m
m-m2
m/m2


#multiplicando matriz de um vetor

x = c(1:4)
x

y = matrix(c(1,2,3,4), nr = 2)
x*y

#nomeando matriz

mat = matrix(c("Terra","marte","saturno","Neturno"), nr = 2)
mat

dimnames(mat) = (list(c("linha1","linha2"),c("linha3","linha4")))
mat

#combinando matrizes
mat2 = matrix(c(2,4,6,7), nr = 2)
mat2

mat5 = matrix(c(7,7,9,8), nr = 2)
mat5

#ligação de linhas
rbind(mat2,mat5) 
c(mat5)

cbind(mat2,mat5)

#desconstruindo matriz

c(mat5)

