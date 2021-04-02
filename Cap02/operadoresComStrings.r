

getwd()

#string texto
texto = "isto é um texto"
texto

x = as.character(3.14)
x
class(x)

#concatenando strings

nome = "Rayssa"; sobrenome="Freitas"
paste(nome,sobrenome)
cat(nome,sobrenome)

#formatando strings

sprintf("A %s é a nota %d,", "hello R", 100)

#EXTRAINDO PARTE DA STRING
text = "isso é uma string"
substr(text, start = 12, stop = 17)

#conta caracter

nchar(text)

#alterando a capitalização
tolower("Teste")
toupper("teste")


#usando stringr
library(stringr)
#divide a string

strsplit("Rayssa foi gorda com cara de bolacha",NULL)

#DIVIDINDO APÓS UMA STRING EM CARACTERES, APÓS O CARACTER DE ESPAÇO
strsplit("Rayssa foi gorda com cara de bolacha","")

#TRABALHANDO COM STRING

STRING =c("TODOS NÓS PRECISAMOS DE PAZ")
STRING

ST2 = c("PRECISAMOS DE PAZ E AMOR")
ST2

#ADICIONANDO 2 STRINGS 

str_c(c(STRING, ST2), sep ="")

#CONTA QUANTAS VEZES APARECE UM DETERMINAR CARACTER NO TEXTO
str_count(ST2,"S")

#localiza primeira e ultima posição do caracter que aparece na string

str_locate_all(ST2,"PAZ")

#SUBSTITUIR A PRIMEIRA OCORRENCIA DE UM CARACTER
A= str_replace_all(ST2,"\\S","")
A

#SUBSTITUIR TODAS AS OCORRENCIAS

#OBTENDO PADRÕES DE STRINGS

str1 = " 17 Jan 2001"
str2= "1 jan 2001"
padrao = "jan 20"
grep(pattern = padrao, x = str2)
grep(pattern = padrao , x= str1)
