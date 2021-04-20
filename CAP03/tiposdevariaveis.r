
#VARIAVEL QUANTITATIVA NOMINAL DISCRETA
slices <- c(10, 12, 4, 16, 8)
lbls <- c("US", "UK", "Australia", "Germany", "France")
pct <- round(slices/sum(slices)*100)
lbls <- paste(lbls, pct) # add percents to labels
lbls <- paste(lbls,"%",sep="") # ad % to labels
pie(slices,labels = lbls, col=rainbow(length(lbls)),
    main="Pie Chart of Countries")


#VARIAVEL quantitativa continua
peso = c(1.24,2.75,4.26,8.45,9.54)
 
hist(peso, col= rainbow(5), main = "histograma de pesos")

 
ggplot(iris, aes(x = Sepal.Length)) +
  geom_histogram(bins = 10) +
  ggtitle("10 classes")

# Histograma com 30 classes:
ggplot(iris, aes(x = Sepal.Length)) +
  geom_histogram(bins = 30) +
  ggtitle("30 classes")
hist(altura)
ordem 

# Gráfico de barras e setores. variavel qualitativa ordinal
package.install("ggplot2")
 library(ggplot2)
df <- data.frame(escolaridade = c("Fundamental", "Médio","Superior"),
                 tamanho = c(1.9, 1.1, 3.2))

# Boxplot
ggplot(df, aes(y = tamanho, x = escolaridade)) +
  geom_bar(stat = "identity")