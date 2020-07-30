getwd()


#numero de linhas
matrix (c(1.2,3,4,5), nr = 2)
matrix (c(1.2,3,4,5), nr = 4)
matrix (c(1.2,3,4,5,6), nr = 6)

#matriz de coluna
matrix (c(1,2,3,4,5,6), nc=3)
#matrizes precisam ter um numero de  elemento que seja multiplo do numero de linhas
matrix (c(1,2,3,4,5), nc= 6)

#matrix de linhas
matrix (c(1,2,3,4,5,6), nr = 3)


dados = c(1:30)
matrix(data = dados, nrow = 5, ncol= 2, byrow =T)
matrix(data = dados, nrow = 5 ,ncol = 2 )


#fatiando matrix 

mat =   matrix(c(2,3,4,5), nr = 2)
mat
mat[1,2] #parou em 05:13 Matrizes, Operações com Matrizes e Matrizes Nomeados - Parte 1/2 08:57
