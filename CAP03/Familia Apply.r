
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

tabela = data.frame(equipe = gl(5,5,labels = paste("Equipe",LETTERS[1:5])), jogador = sample(letters, 25), numcesta = floor(runif(25,min = )))
View(tabela)
tabela
summary(tabela)
tabela["numcesta"] = c(3,5,7,9,11) #adicionando dados a colunas
?sqldf 
#sqldf é um pacote R para executar instruções SQL em 
#quadros de dados R, otimizado para conveniência.
install.packages("sqldf")
library(sqldf)
sqldf("select equipe, sum(numcesta) from tabela group by equipe ")
sqldf("select equipe, AVG(numcesta) from tabela group by equipe ")
?tapply
tapply(tabela$numcesta, tabela$equipe, sum) 
tapply(tabela$numcesta, tabela$equipe, mean)

?by

dat = data.frame(species=c(rep(c(1,2,3), each=5)),
                 petal.length=c(rnorm(5, 4.5,1),
                                rnorm(5,4.5,1),
                                rnorm(5,5.5,1)),
                  petal.width=c(rnorm(5,2.5,1),
                                rnorm(5,4,1),
                                rnorm(5,4,1)))

dat$species = factor(dat$species)
dat$species
View(dat)


by(dat,dat$species, function(x){
  mean.pl = mean(x$petal.length)
})

?lapply()

l1 = list(a = c(1:10), b = c(45:37))
l1
lapply(l1, sum)
sapply(l1, sum)

?vapply


vapply(l1, fivenum, c(Min = 0, "1stQu" = 0 , Median=0,"3rd Qu."=0, Max = 0))
