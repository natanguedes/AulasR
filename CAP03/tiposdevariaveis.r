
#VARIAVEL QUALITATIVA NOMINAL DISCRETA
slices <- c(10, 12, 4, 16, 8)
lbls <- c("US", "UK", "Australia", "Germany", "France")
pct <- round(slices/sum(slices)*100)
lbls <- paste(lbls, pct) # add percents to labels
lbls <- paste(lbls,"%",sep="") # ad % to labels
pie(slices,labels = lbls, col=rainbow(length(lbls)),
    main="Pie Chart of Countries")


#VARIAVEL QUALITATIVA NOMINAL

peso = c(1,2)
peso

hist(peso, col= rainbow(3), main = "histograma de pesos")

altura = c("Graduacao","Mestrado")
altura

freq= table(altura)
freq
hist(altura, col = rainbow(7))

hist(altura)
ordem
?barplot
y = c(7)
a= c(10)
x = c("Doutorado","Mestrado",a)

# Gráfico de barras e setores.
package.install("ggplot2")
 library(ggplot2)
df <- data.frame(escolaridade = c("Mestrado", "Graduação", "Doutorado"),
                 tamanho = c(1.3, 1.9, 3.2))

# Boxplot
ggplot(df, aes(y = tamanho, x = escolaridade)) +
  geom_bar(stat = "identity")