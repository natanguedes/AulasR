

install.packages("readr")
install.packages("data.table")
install.packages("dplyr")
install.packages("ggplot2")


library(readr)
library(data.table)
library(dplyr)
library(ggplot2)
library(data.table)

df= read.table("TemperaturasGlobais.csv") 
df
getwd()
system.time(df)

View(df)
getwd()

#CRIANDO SUBSET DOS DADOS CARREGADOS
cidadeschina = subset(df2, Country == 'China')
cidadeschina = na.omit(cidadeschina)
head(cidadeschina)
nrow(cidadeschina)
dim(cidadeschina)


df2 = read.csv2("Cap02/TemperaturasGlobais.csv", sep ="," )


df3 = fread("Cap02/TemperaturasGlobais")

?fread
View(df2)

install.packages("fread")



nrow(df2)
ncol(df2)
dim(df2)

#carregando dados

china = subset(df,Country='China')
china = na.omit(china)
head(china)
nrow(china)
ncol(china)
dim(china)

