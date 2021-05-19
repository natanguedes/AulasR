getwd()
install.packages("tidyverse") 
#gráfico boxplot
g1 <- ggplot(data = diamonds, aes(x = 1,y = price))
g1 + geom_boxplot()

#Gráficos de dispersão
print("")
g2 <- ggplot(diamonds, aes(x = carat, y = price))
g2 + geom_point()
?ggplot2
g2 + geom_point(mapping = aes(colour = "red"))

g2 + geom_point(mapping = aes(colour = clarity))

ggplot(data = diamonds,
       aes(x = clarity, y = price, group = interaction(clarity, cut), color = clarity)) +
  geom_boxplot(outlier.shape = NA)

g2 + geom_point(aes(color = clarity)) + geom_smooth(method = "lm", se = FALSE, aes(color = "red"))


g3 <- g2 + geom_point(aes(color = clarity)) + geom_smooth(method = "lm", se = TRUE, aes(color = clarity))
g3

g3 + xlab("Quilates") + ylab("Preco")
