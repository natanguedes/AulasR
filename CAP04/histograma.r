?cars
View(cars)
dados= cars$speed
dados

#construindo um histograma
?hist
hist(dados)
hist(dados, col=rainbow(20))

hist(dados, breaks = 10, col = rainbow(30), main = "Histograma das velocidades")
hist(dados, labels = T, col=rainbow(30), breaks = c(0.5,10,20,30), main = "Histogramas das velocidades")
hist(dados, labels = T, ylim = c(0,10), breaks = 10, col = rainbow(30), main = "Histograma de velocidades")

grafico <- hist(dados, breaks = 30, main = "Histograma das velocidades")

xaxis = seq(min(dados), max(dados), length = 30)
yaxis = dnorm(xaxis, mean = mean(dados), sd = sd(dados))
yaxis = yaxis*diff(grafico$mids)*length(dados)

lines(xaxis, yaxis, col="red")


                            