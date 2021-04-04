

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

pares = c(2,4,6,8,10,12)
saida = cbind(df,altura)
saida
saida = cbind(df,pares)


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

#ultimo elemento do dataframa
tail(iris)

saida[idade>10,]
saida[altura>=1.25]
saida[idade>10,]
saida[pares>2,]
colnames(saida) = c("nomes","idades","carros","cores","altura")
saida
rownames(saida) = c("1","2","3","4")
saida[c('cor')]


?mtcars
#Links interessantes
#https://r4ds.had.co.nz/

#http://datascienceacademy.com.br/blog/linguagem-r-por-que-e-hora-de-aprender/
cor
getwd()

system.time(df)

df = read.csv2("TemperaturasGlobais.csv", sep = ",")
df

#criando dados carregados

df[]
Brasil=subset(df, Country=="Brazil")
Brasil = na.omit(Brasil)
head(Brasil)


#palmas

plm = subset(df, Country=='Peru')
plm = na.omit(plm)
plm
nrow(plm)
ncol(plm)

ggplot2(plm, aes(x = x,  y== AverageTemperatureUncertainty, color = as.factor(Year))) + geom_smooth(se = F, fill = NA, size = 2)+theme_light(base_size= 20) + xlab("Mês")+ ylab("Temperature") + scale_color_discrete("")+ggtitle("Temperature")+ theme(plot.title = element_size(size < 18))

?`ggplot2-package`




library(ggplot2)

ggplot(mpg, aes(displ, hwy, colour = class)) + 
  geom_point()library(ggplot2)

ggplot(mpg, aes(displ, hwy, colour = class)) + 
  geom_point()










  