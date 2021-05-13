
search()

#demo
demo("graphics")


#plot Básico
x = 5:7
y= 8:10
plot(x,y)


altura <- c(135,167,123,150)
largura <- c(51,64,40,55)
plot(altura,largura)

#plotando um dataframe
?lynx
plot(lynx)

plot(lynx, ylab="Plots com Dataframes", xlab="")
plot(lynx, ylab="Plots com Dataframes", xlab="Observações")
plot(lynx, main="Plots com Dataframes", col ='red')
plot(lynx, main="Plots com Dataframes", col="red", col.main= 52, cex.main= 1.5)

library(datasets)

hist(warpbreaks$breaks, col= rainbow(50))
airquality
transform(airquality, Month = factor(Month))
boxplot(Ozone ~ Month, airquality, xlab="Month", ylab = "Ozone (ppb6)")

?par
par('pch')
par('lty')

x = 2:4
plot(x, pch="c")

par(mfrow = c(2,2), col.axis = "red")
plot(1:8, las = 0, xlab = "xlab", ylab = "ylab", main = "LAS = 0")
plot(1:8, las = 0, xlab = "xlab", ylab = "ylab", main = "LAS = 1")
plot(1:8, las = 0, xlab = "xlab", ylab = "ylab", main = "LAS = 2")
plot(1:8, las = 0, xlab = "xlab", ylab = "ylab", main = "LAS = 3")
legend("topright", pch = 1, col = c("blue","red"), legend =  c("var1","var2"))

#cores disponiveis
colors()

png("Gráficos.png", width = 500 , height = 500 , res= 72)
plot(iris$Sepal.Length, iris$Petal.Length, col = iris$Species, main = "Gráfico gerado a partir do Iris" )