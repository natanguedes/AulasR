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
 
# Add a Normal Curve (Thanks to Peter Dalgaard)
x <- mtcars$mpg
h<-hist(x, breaks=10, col="red", xlab="Miles Per Gallon",
        main="Histogram with Normal Curve")
xfit<-seq(min(x),max(x),length=40)
yfit<-dnorm(xfit,mean=mean(x),sd=sd(x))
yfit <- yfit*diff(h$mids[1:2])*length(x)
lines(xfit, yfit, col="blue", lwd=2)



grafico <- hist(dados, breaks =  30, main =  "Histograma")

