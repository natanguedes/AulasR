
texto = "isso é uma string"
texto

x = as.character(3.14)
x
mode(x)

#concatenando string

nome = "natanael"; sobrenome="G" 
paste(nome,sobrenome)
cat(nome,sobrenome)

#formatando string
sprintf("A %s é %d","data science", 10)

#extraindo texto
texto = "isso é uma string"
substr(texto, start = 12, stop = 17)

#contando numero
nchar(texto)


#Alterando capitalização

tolower("Histograma e Elemento de Dados")
toupper("Histograma e Elemento de Dados")
