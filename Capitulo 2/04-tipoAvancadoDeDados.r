
#vetor tem apenas 1 dimensão e um tipo de dado


vetor = c(1:30)
vetor
length(vetor)
mode(vetor)
class(vetor)
typeof(vetor)

#matriz possui duas dimensão e um tipo de dado

matriz1 = matrix(1:20, nrow = 2)
matriz1
length(matriz1)
class(matriz1)
typeof(matriz1)

#array possui 2 a 3 mais dimensoes e 1 tipo de dados
array = array(1:5, dim = c(3,3,3))
array
length(array)
class(array)
typeof(array)

#data.frame utiliza mais de duas dimensões
#, ou seja, é uma matriz com tipos de dados diferente

View(iris)




