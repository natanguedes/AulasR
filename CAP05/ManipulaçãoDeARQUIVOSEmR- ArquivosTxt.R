#Manipulação de arquivos TXT,CSV e planilhas excel

#Para que usar  a linguagem R (Qual o objetivo)

#para analise de dados
#de diversas fontes suportadas pela linguagem R

#Arquivos textos - txt e csv
#Arquivo excel xls , xlsx
#banco de dados Oracle,Sql server, MYSQL,Postgres e SQLite
#De softwares estatisticos SAS, SPSS, Stata
#Dados da internet(Web crawling, web scraping)
#Data Lakes Apache Hadoop


#A maior parte do seu tempo em tarefas
#de ciencia de dados será usada para preparação dos dados

#pacotes para carga de dados a partir de arquivo texto:
#-utils
#-readr 
#data.table

#A linguagem R apresenta 3 pacotes principais para carga dos dados 
#utils, readr, data.table

#importação e manipulação de arquivos

  #Pacotes utils
read.table()
read.csv()
read.delim()

#pacotes readr
read.delim()
read.csv()
fread() 

#pacote utils é automaticamente carregado na sua
#sessão R, PODE IMPORTAR ARQUIVOS SIMPLES EM DIFERENTES FORMAS ATRAVES DE FUNÇÕES

#READ.CSV- VALORES SEPARADOS POR VÍRGULAS E PONTO COMO DECIMAL
#READ.CSV2 PARA VALORES SEPARADOS POR VIRGULAS E VIRGULAS COM SEPARADOR DECIMAL
#READ.DELIM PARA VALORES SEPARADOS POR TAB E PONTO COMO SEPARADOR DECIMAL
#READ.DELIM2 PARA VALORES SEPARADOS POR TAB E VIRGULA COMO SEPARADOR DECIMAL
#read.fwf para valores com número exato de bytes por coluna
#read.table Faz a leitura de um arquivo em formato de tabela e carrega como dataframe

#read.table é  muito útil quando se está fazendo a leitura de arquivos ASCII que contém dados em formato retangular
#read.table("arq.txt", header = TRUE, sep = "\", str)
#read.table("arq.txt", header = TRUE, sep = ",", str)
?read.table()
## when fill = TRUE
test1 <- c(1:5, "6,7", "8,9,10")
tf <- tempfile()
writeLines(test1, tf)

read.csv(tf, fill = TRUE) # 1 column
ncol <- max(count.fields(tf, sep = ","))
read.csv(tf, fill = TRUE, header = FALSE,
         col.names = paste0("V", seq_len(ncol)))
unlink(tf)
tf
test1


#read.csv()
#muito útil para imjportar arquivos com  separadores de colunas
read.csv("arquivo.csv", sep = ",", dec=",", stringsAsFactors =  FALSE)

#DELIM
read.delim("ARQUIVO.txt")
read.delim2("arq.txt")

#parametros
#headers, col.names, na.string
#colClasses
#sep
#stringAsFactors
#pacote readr
#lançado  em Abril/2015
read.table()
read.csv()
read.delim()
 
readcsv = read.table("CAP05/transferencia.csv", sep = ";", header = T)
dados <- subset(readcsv, select = c( ï..MÃªs.Ano, Tipo, Tipo.de.Favorecido))
head(dados)
readcsv 
s=na.omit(readcsv)
s

print(readcsv)
getwd() 


meusq = read.csv(file.choose())
meusq

head(meusq)

str(meusq)

df <-read.table("CAP05/temperaturas.txt", col.names =  c("DAY","MONTH","YEAR","TEMP"))
print(df)
read.file
s = readlile("CAP05/temperaturas.txt" )
readLines("CAP05/temperaturas.txt", skip=0)
write.csv(iris,"iris.csv")
dir()

#col_integer()
#col_double()
#col_character()
#col_factor()
#col_skip()

dataframeIris = read.csv("CAP05/iris.csv", sep = ";")
dataframeIris
dim(dataframeIris)
str(dataframeIris)


#manipulacao de arquivo csv

df_cad = read.csv("CAP05/cadastro.csv")
View(df_cad)

install.packages("dplyr")
library(dplyr)
options(warn = 1)

dfcad = tbl_df(df_cad)
head(dfcad)
View(dfcad)

#continuar parte 2

search()
dfPedido = read.table("CAP05/pedidos.txt", header = T, sep=",") 
dfPedido
dim(dfPedido)

df1 = read.table("CAP05/Pedidos.txt", header =  T, sep ="," , col.names =  c("var1","var2","var3") )


df1


df1 =  read.table("CAP05/pedidos.txt", header =  T, sep=",", col.names = c("var1","var2","var3"), na.strings = c("Zico","Maradona")  )


df1


df2 = read.table("cap05/pedidos.txt", header = T, sep = ",", col.names = c("var1","var2","var3"), na.strings =  c("Zico","Maradona"), stringsAsFactors =  F)

df2




df2 = read.table("cap05/pedidos.txt", header = T, sep = ",", col.names = c("var1","var2","var3"), na.strings =  c("Zico","Maradona"), stringsAsFactors =  F)

df2
str(df2) #verifica os tipos das variáveis e seus fatores

saida = na.omit(df1)
saida


#importando / exportando
write.csv(mtcars, file = "CAP05/exemplo.txt", sep = "|", col.names = NA, qmethod =  "double")
list.files()

s=read.table("cap05/exemplo.txt", sep = ",", header =  T)
s

mtcars = read.table("CAP05/exemplo.txt", sep = ",")

mtcars

mtcars = read.table("CAP05/exemplo.txt", sep = "|")
mtcars = read.table("CAP05/exemplo.txt", sep = "|", encoding = "UTF-8-8")
mtcars
