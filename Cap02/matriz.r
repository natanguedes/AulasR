
getwd()


#criando matriz

#numeros de linhas

matrix(c(1,2,3,4,5,6), nr = 2, nc = 2)

matrix(c(2,4,6,8,10), nr = 5)

matrix(c (1,2,3,4,5), nr= 3)
#numero de coluna
matrix(c(1,2,3,4,5,6,7,8,9,3,2,5,3), nc=6)

#matriz a partir de vetores

dados = c(1:10)
dados= matrix(c(2,4,6,8))
dados
#matriz apartir de vetores e preenchimento apartir de linhas
matrix(c(2,4,6,8), nr=2)
matrix(data = dados, nrow = 5, ncol = 2, byrow = T)
matrix(data=dados,nrow=5, ncol=2) 




#fatiando matriz
mtx = matrix(c(2,4,6,8), nr= 2)
mtx

mtx[1,2]
mtx[2,2]
mtx[1,3] #mtx[linha,coluna]
#linhas da segunda coluna
mtx[,2]

#matriz diagonal
matr = 1:3
diag(matr)

#extraindo vetor diagonal
vetor = diag(matr)
vetor

#matriz transposta

m1 = t(matr)
m1

#matriz inversa
solve(dados)

mtx= matrix(c(1,2,3,4),ncol = 2 , nr=2)
solve(mtx)


#multiplicacao de matrizes

mat1 = matrix(c(1,2,3,4), nr = 2)
mat1

mat2 = matrix(c(6,7,8,9), nr = 2)
mat2

mat1+mat2
mat1-mat2
mat1*mat2
mat1/mat2

#multiplicando matriz


x = c(1:4)
x
y <- c(1:4)
y
x+y

x-y
x*y
x/y


#multiplicacao com vetor
x = c(1:4)
x

y= matrix(c(1,2,3,4), nr = 2)
y

#multiplicacao com vetor

x = c(2,4,6,7)
x

y = matrix(c(2,3,4,5), nr = 2)
y
x * y
x/y
x+y
x-y

#nomeando matrizes
matx1 = matrix(c("terra","marte","jupiter","neturno"), nr = 2)
matx1

dimnames(matx1) = (list(c("linha1","linha2"), c("coluna1","coluna2")))
matx1
matx1[2]
matx1[1:2]

