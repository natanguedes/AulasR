
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

#replicate

replicate(7, rnuif(10))
?replicate







y <- replicate(x, a.ind= 0:2, b.ind = 0:2, c.ind = 0:2)
y
#  Create a 3x3 supercell which might need to be wrapped (some molecules are ouside the cell)
y <- replicate(x, a.ind= -1:1, b.ind = -1:1, c.ind = -1:1)
y
#  Create a layered supercell with a vacuum layer in the bc-plan
y <- replicate(x, a.ind= c(0,2), b.ind = 0:2, c.ind = 0:2)
y

#mapply(),
mapply(rep,1:4,4:1)
?mapply


replicate(7, runif(10))

#mapply
mapply(rep,1:4, 4:1)

#rapply()
l2 = list(lista)
l2

l1 = list(a = c(1:4), b=c(6:10)) 
l1
rapply(l2,sum, how = "list")

#funçoes especiais unlist(), do.call(), strsplit()
#produz um vetor com os elementos da lista
?unlist()

lst1 = list("A","B",15)
lst1
class(lst1)

unlist(lst1) #TRANSFORMA A LISTA NUM VETOR

vec1 = unlist(lst1)
vec1
class(vec1)


lst = list(v1 = 6 , v2= list(381,2190), v3 = c(30, 217))
lst
class(lst)
s=unlist(lst)
s
class(s)

mean(unlist(s))
round(mean(unlist(lst)))#calculando a média , unlist transforma em vetor e arredonda o valor round()

#A FUNÇÃO DO.CALL APLICA UMA FUNÇÃO A CADA ELEMENTO DE UM OBJETO (SUBSTITUI O LOOP)
?do.call #A FUNÇÃO do.call aplica uma função ao objeto inteiro e não a cada objeto individualmente

help("do.call")
help.search("do.call")
help.start("do.call")
#Atenção
data = list()
N=100
for (data  in 1:N) {
  #data[N] = data.frame(index= n, char = sample(letters,1) , z = rnorm(1)
  sum(sapply(data, function(x) sum(N == head) ==100))
                       
   
  
}

head(data)
?rnbinom

do.call(rbind.data)

do.call(rbind,data)
class(do.call(rbind,data))

#lapply(y,sum)
y = list(1:3, 4:6,7:8)
y



lapply(y, sum)
do.call(rbind,data)

#lapply() x do.call()

l1= list(1:3, 4:6, 7:9)
sum(l1)
lapply(y,sum)
?ldply

install.packages("plyr")
library(plyr)

#divide a string em caracteres

texto ="Data Science Academy"
strsplit(texto,"")

texto = "Data Science Academy"
strsplit(texto, "")

date = c("1990-04-23","2001-04-30","2001-04-23")
date
tmp =strsplit(date, "-")
tmp
class(tmp)

#transforma lista em matriz
matrix(unlist(tmp), nc = 3 , byrow = T)
tmp
names <- c("nATAN")
class(names)
typeof(names)
tolower(names)

#transforma lista em matriz

matrix(unlist(tmp), nc=3,byrow= T)

names <- c("Brian Sergey","Page Larry","Dorsey","Jack","Glass","Noah","williams","Evan","Stone","Biz")

Cofounder = rep(c("Google","Twitter"), c(2,4))
tmp = strsplit(names,",")

#parte 2/3 -funçoes especiais unlist do.call(), strsplit() , 07:49


tmp


frases = "Muitas vezes temos que repetir algo diversas vezes e essas diversas
          vezes parecem algo estranho"
frases

palavras = strsplit(frases,"")[[1]]
palavras

unique(toupper(palavras))
?unique
antes 

d=data.frame(attr= c(1.30,6), tipo = c('pao-com-agua','pao_e_agua_2'))
d

depois = strsplit(as.character(d$tipo ),"_e_")
depois
do.call(rbind,depois)
install.packages("stringr")
library(stringr)

install.packages("dplyr")
install.packages("tidyr")
antes = data.frame(
  attr = c(1,10,3,6),
 tipo = c("pao_e_agua", "pao_e_agua_2")  
)
