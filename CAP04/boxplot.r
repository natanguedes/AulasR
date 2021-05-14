?boxplot
?sleep

#permite usar as colunas sem especificar o nome do dataset
attach(sleep)

#construindo boxplot
                           #~ relação entre as duas variáveis
plot <- boxplot(data = sleep, extra ~ group, main="duração de sono", col.main="red", ylab =  "Horas", xlab = 'Droga', horizontal =  T)

#cálculo da média
medias <- by(extra,group,mean)
medias

points(medias, col = "red")

#Boxplot
dev.off()
boxplot(data= sleep, extra~group, ylab= "", xlab="", horizontal =  T)
horizontalboxplots

boxplot(data= sleep, extra~group, ylab= "", xlab="", horizontal =  T, col= c("blue","red"))
?cars

View(cars)

getwd()

#construindo um histograma
?hist
hist(dados)
#extraindo colunas
dados = cars$speed
dados
#conforme coñsta no help , o parâmetro breaks pode ser um dos tipos abaixo:
#um vetor para os pontos de quebra entre as células do histograma
#uma função para calcular o vetor breakpoints
#um único número que representa o número de células para o histograma
#uma cadeia de caracteres que nomeia um algoritmo para calcular o numero de células
#uma função para calcular o número de células

hist(dados, breaks = 10, main = "Histogramas de velocidades")
hist(dados, labels = T, breaks = c(0.5,10,20,30),  main =  "Histograma das velocidades")
hist(dados, labels = T, breaks = 10, main = "Histograma de velocidades")
hist(dados, labels = T, ylim = c(0,10), breaks = 10, main =  "Histograma de velocidades", col=rainbow(60) )

#adicionando linhas aos gráficos
#quantidade de colunas
hist(dados, breaks = 1, main = "Histograma",  col=c("blue","black","orange"))
xaxis = seq(min(dados), max(dados), length = 30)
xaxis
yaxis = dnorm(xaxis,seq(min(dados), max(dados), length = 10))
yaxis
xaxis*diff(grafico$mids*length(dados))

line(xaxis, yaxis, col = "red")

?line
# specify the data
x <- c(1:10); y <- x; z <- 10/x

# create extra margin room on the right for an axis
par(mar=c(5, 4, 4, 8) + 0.1)

# plot x vs. y
plot(x, y,type="b", pch=21, col="red",
     yaxt="n", lty=3, xlab="", ylab="")

# add x vs. 1/x
lines(x, z, type="b", pch=22, col="blue", lty=2)

# draw an axis on the left
axis(2, at=x,labels=x, col.axis="red", las=2)

# draw an axis on the right, with smaller text and ticks
axis(4, at=z,labels=round(z,digits=2),
     col.axis="blue", las=2, cex.axis=0.7, tck=-.01)

# add a title for the right axis
mtext("y=1/x", side=4, line=3, cex.lab=1,las=2, col="blue")

# add a main title and bottom and left axis labels
title("An Example of Creative Axes", xlab="X values",
      ylab="Y=X")








require(graphics)

plot(cars)
(z <- line(cars))
abline(coef(z))
## Tukey-Anscombe Plot :
plot(residuals(z) ~ fitted(z), main = deparse(z$call))

## Andrew Siegel's pathological 9-point data, y-values multiplied by 3:
d.AS <- data.frame(x = c(-4:3, 12), y = 3*c(rep(0,6), -5, 5, 1))
cAS <- with(d.AS, t(sapply(1:10,
                           function(it) line(x,y, iter=it)$coefficients)))
dimnames(cAS) <- list(paste("it =", format(1:10)), c("intercept", "slope"))
cAS















