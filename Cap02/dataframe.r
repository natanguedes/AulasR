

getwd()


#vetor vazio

df = data.frame()
class(df)
df

#criando vetores

nomes = character()
idade = numeric()
carros = character()
cor = character()
df = data.frame(c(nomes,idade,carros,cor))

#criando vetores

nomes = c("natanael","ferreira","rayssa","afonso")
idade= c(22,55,77,47)
carros = c("monza","vectar","chevette","fusca")
cor = c("verde","vermelho","azul","cinza")

df = data.frame(nomes,idade,carros,cor)
df

#adicionando mais uma coluna no dataframe

altura = c(1.25,2.35,5.67,2.48)
altura

saida = cbind(df,altura)
saida



#informações do dataframe

str(df)
dim(df)
length(df)

#obtendo vetor do dataframe

df$nomes
df$idade
df$carros
df$cor

#extraindo um único valor

saida[1,1]


saida[1,2]


#numeros de linhas e colunas

nrow(df)
ncol(df)

 #primeiros elementos do dataframe
head(df)

#ultimo elemento do dataframe
tail(iris)

saida[idade>10,c('nomes')]
saida[idade>10,]

colnames(saida) = c("var1","var2","var3","var4","var5")
saida
rownames(saida) = c("1","2","3","4")
saida

?mtcars
