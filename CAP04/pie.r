

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

install.packages("plotrix")
library(plotrix)
pie(fatias, labels, explode=0.05, col =  c("steelblue1","tomato2","tan3"), main = "Distribuição de vendas")


install.packages("plotrix")
library(plotrix)

pieval<-c(2,4,6,8)
pielabels<-
  c("We hate\n pies","We oppose\n  pies","We don't\n  care","We just love pies")
# grab the radial positions of the labels
lp<-pie3D(pieval,radius=0.9,labels=pielabels,explode=0.1,main="3D PIE OPINIONS")
# lengthen the last label and move it to the left
pielabels[4]<-"We cannot survive without our pies"
lp[4]<-4.8

pieval<-c(2,4,6,8)

# specify some new colors
pie3D(pieval,labels=paises,main="Distribuição de vendas",explode = 0.05,
      col=c("red","blue","green",main="Distribuição de vendas"))



pie3D(fatias,labels = paises, explode = 0.05,
      col = c("steelblue1","tomato1","tan3"), main="Distribuição de Vendas")