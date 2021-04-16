getwd()


#busca de pacotes carregados

search()


#instala e carrega pacotes

install.packages(c("ggvis","tm","dplyr"))
?ggvis
?tm

#essas duas funçoes carrega o pacote
require(ggvis)
library(ggvis)
library(plyr)
#descarregando pacote

detach(package:dplyr)

#lista o conteudo de pacotes

?ls

ls(pos = "package:ggplot2")



myfunc <- function() {ls()}
myfunc()

# define a local variable inside myfunc
myfunc <- function() {y <- 1; ls()}
myfunc() 


#Lista as funções de um pacote

lsf.str("package:ggplot")
library(ggplot2)
lsf.str("package:ggplot2")
ls(getNamespace("tm"), all.names = TRUE)

#o r possui um conjunto de dataset pré-instalados

library(MASS)
data() #lista todos os datasets que o r tem pré-instalado
head(lynx)
head(iris)
tail(lynx)
summary(lynx)
?lynx



plot(lynx)
hist(lynx)

iris$Sepal.Length
sum(iris$Sepal.Length)
head(iris)

?attach

attach(iris)
#precisa-se dá o attach para usar o comando abaixo
iris$Sepal.Length


