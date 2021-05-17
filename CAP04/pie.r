

?pie


#criando fatias

fatias = c(70,10,1)
fatias

paises = c("Brasil","Argentina","Rússia")
paises = paste(paises,"%", fatias, sep = "")
paises

pie(fatias, labels = paises, col = c("darksalmon","gainsboro", "lemonchiffon4"), main = "Distribuição de vendas")


 

#trabalhando com dataframe

?iris
attach(iris)
values = table(Species)
labels = paste(names(values))
iris
pie(values, labels = labels, main = "Distribuição de Especies" , col = rainbow(30))

