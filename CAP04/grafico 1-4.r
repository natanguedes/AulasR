getwd()


#demo
demo("graphics")
#listar pacotes
search()
#plot 
x = 5:7
y= 8:10
plot(x,y)
?plot

altura = c(145,167,176,121,150)
largura = c(51,63,64,40,55)
plot(altura,largura)

#plotando daTaframe
?lynx
plot(lynx)
plot(lynx,main="Plots com Dataframe",xlab="")
plot(lynx,main="Plots com Dataframe",xlab="Observação")
plot(lynx,main="Plots com Dataframe",col="red")
plot(lynx,main="Plots com Dataframe",col="red", col.main=12, cex.main=1.5)


library(datasets)
airquality
transform(airquality, Month = factor(Month))
boxplot(Ozone ~ Month, airquality, xlab = "Ozone")
hist(warpbreaks$breaks, col = rainbow(10))
#especificação de parametros

#col = cor de plot
#lty = tipo de linha
#lwd = largura DE LINHA
#PCH simbolo de plot
#xlab las como os labels dos eixos são orientados
#bg background color
#mfrow numero de plot por linhas
#mfcol números de plots por colunas

#funções basicas de plot

?par
par()
par("pch")
par("lty")

x = 2:4
plot(x,pch="y")

par(mfrow = c(2,2), col.axis = "red")

plot(1:8, las = 0, xlab = "xlab", ylab = "ylab", main = "LAS = 0")
plot(1:8, las = 1, xlab = "xlab", ylab = "ylab", main = "LAS = 1")
plot(1:8, las = 2, xlab = "xlab", ylab = "ylab", main = "LAS = 2")
plot(1:8, las = 0, xlab = "xlab", ylab = "ylab", main = "LAS = 3")
legend("topright", pch = 1, col=c("red","blue"), legend = c("var1","var2")) 
par(mfrow = c(1,1))

colors()

install.packages("png")
png("Grafico03.jpg", width = 500, height =  500, res= 72)
getwd()


plot(iris$Sepal.Length,iris$Petal.Length, 
     col= iris$Species,
     main = "Grafico gerado a partir do Iris")

pdf("Figura1.pdf", width = 5, height = 4)

#entendendo as funções plot
install.packages("plotrix")
library(plotrix)
?plotrix
par(mfrow = c(1,1), col.axis="red")
plot(1:6, las= 3 , xlab = "lty 1:6", ylab = "", main = "Mais opções ao plot")
ablineclip(v=1, lty=1, col="sienna2", lwd = 2)
ablineclip(v=2, lty=1, col="sienna2", lwd = 2)
ablineclip(v=3, lty=1, col="sienna2", lwd = 2)
ablineclip(v=4, lty=1, col="sienna2", lwd = 2)
ablineclip(v=5, lty=1, col="sienna2", lwd = 2)
ablineclip(v=6, lty=1, col="sienna2", lwd = 2)
ablineclip(v=7, lty=1, col="sienna2", lwd = 2)


plot(lynx)
plot(lynx, type="p", main="Type p")
plot(lynx, type="l", main="Type l")
plot(lynx, type="b", main="Type b")
plot(lynx, type="o", main="Type o")
plot(lynx, type="h", main="Type h")
plot(lynx, type="s", main="Type s")
plot(lynx, type="o", main="Type n")

#dois plot
par(mar=c(4,3,3,3), col.axis="black" )
plot(cars$speed, type="s", col="red",bty="n", xlab = "Cars ID", ylab = "")
text(8, 14, "Velocidade", cex=0.95, col="red")
title(main = "Velocidade a Distância")

#plot a partir  de datasets

