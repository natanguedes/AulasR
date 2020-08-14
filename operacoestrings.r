  

getwd()


#string
texto = "eu sou uma string"
texto

x = as.character(12)
x
class(x)

#concatenando string
nome = "Natanael"; sobrenome="Guedes"
paste(nome,sobrenome)
cat(nome,sobrenome)

#formatando saida de string
nota = 10;
sprintf("A materia         %s  obteve a nota  %d", "portugues", 10  )

#extraindo parte da string
texto="isto é uma string"
substr(texto, start=12, stop=17)

#contando  numero de caracter
nchar(texto)

#alterando letras para minusculo
t = "ISTO EH UM  TEXTO "
tolower(t)
#alterando letras para maiusculo
Ti="meu texto"
toupper(Ti)


#usando stringr
library(stringr)
strsplit("ESSA EH A PRIMEIRA PARTE DA STRING, AQUI CONTINUA MAS SERÁ TRANSFORMADO EM VETOR", NULL)

strsplit("ESSA EH A PRIMEIRA PARTE DA STRING, AQUI CONTINUA MAS SERÁ TRANSFORMADO EM VETOR", "")

STR1 = c("EU AMO O R  ","NA ESTATISTICA")
STR1
STR2 = c("E O PYTHON"," TAMBEM  ")

str_c(STR1,STR2)

str_c(c(STR2,STR1), sep="")
