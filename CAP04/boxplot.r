?boxplot
?sleep

#permite usar as colunas sem especificar o nome do dataset
attach(sleep)

#construindo boxplot

plot <- boxplot(data = sleep, extra ~ group, main="duração de sono", col.main="red", ylab =  "Horas", xlab = 'Droga')

#cálculo da média
medias <- by(extra,group,mean)
medias

points(medias, col = "red")
