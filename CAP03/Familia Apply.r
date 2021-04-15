
#aplicando apply() a um dataframe

apply()#apply - array e matrizes
tapply() #tapply os vetores podem ser divididos em diferentes subsets
lapply()#vetores e listas
sampply()#versão amigável
vapply()#similar a samply() 
rapply() #similar , com valor de retorno modificado
capply()# gera uma lista
mapply()#similar a sapply , 
#by

#list , numeric, character (list/vecor) -> sampply ou lapply
#matriz , data.frame, (agregação por coluna) by/ tapply
#operação por linha ou operações especificas = apply

#se tiver trabalhando com os objetos

#utilizando listas loop

#lista com loop
lista = list(a = (1:20), b = (36.67))
lista


#calculando o total de elementos da lista com loop for
valor_a = 0
valor_b = 0
for(i in lista$a){
  valor_a = valor_a + i
}
for (i in lista$b) {
  valor_b = valor_b + j
  
}
print(valor_a)
print(valor_b)

?sapply

#calculando cada elemento da lista com samply

sapply(lista,sum)

#samply em funções
sapply(lista,mean)


x <- matrix(c(20,13,65,32,45,12,76,49,82), nr = 3, byrow = T)
x

x = matrix(c(20,13,65,32,45,12,76,49,82), nr=3, byrow = T)
x

apply(x,2, mean)
apply(x,1, mean)
apply(x,2, sun)
apply(x,1,plot)
dev.off()

escolas = data.frame(Aluno = c("Bob","Alan","Teresa"), Fisica = c(91,82,33),Matematica = c(8,9,7), Quimica = c(10,31,40))
escolas

escolas$Aluno
escolas$Fisica
escolas$Matematica
escolas$Quimica

#calcular media por aluno
escolas$Media = NA
escolas$Media
escolas
#preenchendo  as colunas NA

escolas$Media = apply(escolas[,c(2,3,4)],1,mean)
escolas$Media

escolas$Media = round(escolas$Media)
escolas$Media
escolas

#tapply()
?gl

tabela = data.frame(equipe = gl(5,5,labels = paste("Equipe",LETTERS[1:5]))), jogador = 