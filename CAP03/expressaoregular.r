getwd()

str = c("Expressoes","regulares","em linguagem r",
        "permite a busca de padrões","e exploração de textos","podemos buscar padrões em digitos",
        "podemos buscar padrões em digitos", "como por exemplo","2534644242")
length(str)
str

#grep busca um padrão dentro do texto
?grep

grep("ex", str, value = F)
grep("ex", str, value = T)
grep("\\d",str, value = F)

#grepl se encontrar o digito retorna TRUE e   se não encontrar retorna FALSEv \\d+ retorna digito e palavras
grepl("\\d+", str)
grepl("\\D", str) #retorna Tudo que não é digito \\D (TRUE)

?gsub #substituição de padrão

gsub("em", "**", str) #substitui em por **

#substitui minusculo para maiusculo
gsub("ex","EM",str)


#regexp procurar uma letra especifica ou caracter numa frase
frase = "isso é uma string"
regexpr(pattern = "u", frase) #retorna a posição na qual se encontra a letra u

str2= c("2678 é maior que 45 - @???!§$", "vamos escrever l4 scripts R")
str2

#gsub()

gsub("\\d","", str2)
gsub("\\D","", str2)
gsub("[iot]","Q", str2)
gsub("\\s","",str2)
gsub("[[:punct:]]","",str2)
