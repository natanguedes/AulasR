# Lista de Exercícios - Capítulo 2

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("C:/FCD/BigDataRAzure/Cap02")
getwd()

# Exercício 1 - Crie um vetor com 30 números inteiros

vetor = c(1,30)
length(vetor)

# Exercício 2 - Crie uma matriz com 4 linhas e 4 colunas preenchida com números inteiros

car1 = c("nome","cor","motor","modelo")
car1
car2 = c("corsa", "azul","bmw" ,"A2")
car3 = c("fusca", "rosa","chevrolet" ,"A3")
car4 = c("vectar", "vermelhor","FORD" ,"A4")
r =  rbind(car1,car2,car3,car4)
r

colnames(car2)=(c("nome","cor","motor","modelo")          ) 

# Exercício 3 - Crie uma lista unindo o vetor e matriz criados anteriormente


unir =list(r,vetor)
unir
typeof(unir)
# Exercício 4 - Usando a função read.table() leia o arquivo do link abaixo para uma dataframe
# http://data.princeton.edu/wws509/datasets/effort.dat

df= read.table("http://data.princeton.edu/wws509/datasets/effort.dat")
df

df[,1]
# Exercício 5 - Transforme o dataframe anterior, em um dataframe nomeado com os seguintes labels:
# c("config", "esfc", "chang")
colnames(df)=(c("config", "esfc", "chang")          ) 
df
# Exercício 6 - Imprima na tela o dataframe iris, verifique quantas dimensões existem no dataframe iris e imprima um resumo do dataset
iris= data.frame(iris)
#quantidade de linhas
x=nrow(iris)

#quantidade de colunas
y=ncol(iris)
# Exercício 7 - Crie um plot simples usando as duas primeiras colunas do dataframe iris

    require(stats)
    pie(table(iris))   
    graphics.off()
 
# Exercício 8 - Usando a função subset, crie um novo dataframe
#com o conjunto de dados do dataframe iris em que Sepal.Length > 7
# Dica: consulte o help para aprender como usar a função subset()
subset(iris,Sepal.Length > 7)

?subset
# Exercícios 9 (Desafio) - Crie um dataframe que seja cópia do dataframe iris e usando a função slice(), divida o dataframe em um subset de 15 linhas
# Dica 1: Você vai ter que instalar e carregar o pacote dplyr
# Dica 2: Consulte o help para aprender como usar a função slice()
install.packages("dplyr")
library("dplyr")

?slice

 COPY<-data.frame(iris)
COPY

slice(COPY, n())

# Exercícios 10 - Use a função filter no seu novo dataframe criado no item anterior e retorne apenas valores em que Sepal.Length > 6
# Dica: Use o RSiteSearch para aprender como usar a função filter

?filter

filter(COPY,Sepal.Length>7)
