getwd()
search()

#plot básico

x = c(1,2,3,4)
y= c(1,2,3,4,5)
plot(x,y)
?plot

plot(x, sin(x),
     main="Overlaying Graphs",
     ylab="",
     type="l",
     col="blue")
lines(x,cos(x), col="red")
legend("topleft",
       c("sin(x)","cos(x)"),
       fill=c("blue","red")
)

altura = c(1.25,2.55)
largura = c(10.5, 12,43)
plot(altura,largura)

plot(iris$Sepal.Length)


x = 5:7
y= 10:15
plot(10,12)



altura = c(145,167,176,123,150)
largura = c(51,63,64,40,55)
plot(altura,largura)


#plot dataframe
?lynx
plot(lynx)
plot(lynx, ylab= "plot com DataFrame", xlab="Observações")
plot(lynx, ylab= "plot com DataFrame", xlab="Observações")
plot(lynx, ylab= "plot com DataFrame", col="red")
plot(lynx, ylab= "plot com DataFrame", col="red",col.main = 52,cex.main= 1.5)

library(datasets)
hist(iris$Sepal.Length, col = rainbow(50))
transform(airquality, Month= factor(Month))
boxplot(Ozone ~ Month, airquality, xlab = "Month", ylab =  "Ozone ")


?par

par("pch")
par("lty")

#parte 3/4

x = 2:4
plot(x, pch="c")

par(mfrow= c(2,2), col.axis = "red")
plot(1:8, las = 0 , xlab = "xlab", ylab = "ylab", main = "LAS = 0")
plot(1:8, las = 0 , xlab = "xlab", ylab = "ylab", main = "LAS = 1")
plot(1:8, las = 0 , xlab = "xlab", ylab = "ylab", main = "LAS = 2")
plot(1:8, las = 0 , xlab = "xlab", ylab = "ylab", main = "LAS = 3")
legend("topright", pch = 1, col= c("blue","red"), legend =  c("var1","var2"))

#parte 4/4 parou em 07:28 cap 4 base plotting system

