?unlist

list = list(6,"b",15)
list
class(list)

unlist(list)

var1 = unlist(list)
var1
class(var1)


lst2 = list(v1=6, v2= list(361,2190), v3 = c(30,217))
lst2
unlist(lst2)
mean(unlist(lst2))
round(mean(unlist(lst2)))

?do.call

data = list()
N = 100
for (n in 1:N) {
  data[n] = data.frame(index=n, char=sample( letters , 1), z= rnorm(1))
  
}
head(data)


do.call(rbind,data)
class(do.call(rbind,data))


#lappy() e do.call()

y = list(1:3,4:6,7:9)
y

lapply(y, sum)



#o resultado da função lapply() pode ser obtido de outras formas
#pacote plyr
install.packages("plyr")
library(plyr)

y = list(1:3,4:5,7:9)
y
ldply(y,sum)

texto ="Data Science Academy"
strsplit(texto,"")

texto2  = "Data Science Academy"
strsplit(texto2,"")

dates = c("1998-05-25","2008-12-30","2009-11-29")
temp = strsplit(dates,"")
temp
class(temp)
#Transforma a lista em matriz, fazendo antes um unlink()
matrix(unlist(temp), nc=3,byrow = T)

names = c("Natanael G","Asteria Guedes", "Romario josé","Glaucia Lima","Alessandra Borges","Aline Barros")
tmp = strsplit(names,",")
tmp

frases <- "muitavezestemosquerepetiralgodiversasvezeseessasdiversasvezesparecemalgoestranho"
palvra<-strsplit(frases,"")[[1]]
palvra


antes = data.frame(attr = c(1.30,4,6), tipo = c("pao e agua1","pao e agua2","pao e agua3"))
antes
 
depois = strsplit(as.character(antes$tipo), '_e_')

depois

a=do.call(rbind, depois)

a

install.packages("dplyr")
install.packages("tidyr")
library(dplyr)
library(tidyr)

 antes = data.frame(attr= c(1,30,4,6), 
                    tipo = c('pao_e_agua', 'pao_e_agua', 'pao_e_agua', 'pao_e_agua' ))
                ?separate    
antes
  separate(antes,     tipo ,"_e_")
 