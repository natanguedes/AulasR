
getwd()

#matrizes

#números de linhas
matrix(c(1,2,3,4,5,6), nr=2) #nr = number rows
matrix(c(1,2,3,4,5,6), nr=3)
matrix(c(1,2,3,4,5,6), nr=6)

#help
?help


#a matriz precisa ter o numero multiplo de linhas

matrix(c(1,2,3,4,5,6), nc= 2)

#criando matriz A partir dos elementos que seja multiplo de número de linhas

dados = c(1:10)

#criando vetores e preenchendo-o a partir dos numeros de linha

matrix(data = dados, nrow = 5, ncol = 2,byrow = T) 
#byrow deseja criar o preenchimento por linhas

matrix(c(1,2,3,4,5), nc= 2)


#fatiando matriz

matx = matrix(c(2,4,6,8), nr = 2)
matx

matx[1,2] #1 = linha # coluna 3
matx[2,2]
matx[1,1]
matx[2,2]
matx[,2] #elementos da segunda coluna

#matriz diagonal
n = seq(5)

matrix = matrix(c(1,2,3,4),ncol = 2, byrow = T)
matrix

n = 1:3
n
diag(n)

#fatiar matriz

mat = c(2,8,10,12)
mat
diag(mat)

#transposta

t = matrix(c(2,4,6,8,12), nr=2,nc=2)
t

t(t)
 #parou em 03:57 matrizes e operações com matrizes parte 2/2


#matriz inversa   
solve(t)

#matriz transposta

w = matrix(c(2,4,6,8,10), nr=2)
w

t(w)

#multiplicao de matrix

a = matrix(c(2,4,5,6), nr = 2)
a

b= matrix(c(6,7,8,9), nr = 2)
b

a-b
a+b
a/b
a*b

#multiplicando matriz com vetor

x = c(1:4)
x

y = matrix(c(2,4,6,8), nr = 2)
y

a = matrix(c(2,4,6,8), nr = 2)
a+y
a/b
a*b
a-b



#multiplicando matriz com vetor

y =  c(1:30)
y

x = matrix(c(2,3,4,5))
x

x+y

#nomeando matrix
t = matrix(c('Terra','Marte', 'Saturno','Neturno'), nr = 2)
t


dimnames(t) = (list(c("linha1","linha2"),c("coluna1","coluna2")))
t

#identificando linha e colunas no momento de criação da matriz
matrix(c(1,2,3,4),  nr= 2, nc = 2,  dimnames = list(c("linha2","linha3")))


#combinando matrizes

mat4 = matrix(c(2,3,4,5), nr = 2)
mat4

mat5 = matrix(c(6,7,8,9), nr=2)
mat5
cbind(mat4,mat5)

saiba = c(mat4,mat5)
saiba

c(mat4)
mat4
