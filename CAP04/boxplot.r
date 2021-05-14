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
