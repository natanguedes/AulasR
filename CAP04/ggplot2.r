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
g3 + xlim(0, 10) + ylim(0, 30000)


g3 + xlim(0, 10) + ylim(0, 30000) + annotate("text", x = 9.5, y = 30000, label = "Painel a", color = "red")

g3 + xlim(0, 10) + ylim(0, 30000) +
  annotate("rect", xmin = 3, xmax = 4, ymin = 10000,
           ymax = 20000, alpha = .2, color = "blue", fill = "green")

g3 + xlim(0, 10) + ylim(0, 30000) +
  annotate("segment", x = 3, xend = 4, y = 30000, yend = 20000,
           color = "orange", arrow = arrow(length = unit(1, "cm")))

g2 + geom_point(aes(color = clarity)) + scale_color_brewer(type = "seq", palette = "Set3")
g2 + geom_point(aes(color = clarity)) + facet_grid(. ~ cut)

g3 + xlim(0, 10) + ylim(0, 30000) + annotate("text", x = 9.5, y = 30000, label = "Painel a", color = "red")

g3 + xlim(0, 10) + ylim(0, 30000) +
  annotate("rect", xmin = 3, xmax = 4, ymin = 10000,
           ymax = 20000, alpha = .2, color = "blue", fill = "green")

g3 + xlim(0, 10) + ylim(0, 30000) +
  annotate("segment", x = 3, xend = 4, y = 30000, yend = 20000,
           color = "orange", arrow = arrow(length = unit(1, "cm")))

g2 + geom_point(aes(color = clarity)) + scale_color_brewer(type = "seq", palette = "Set3")
g2 + geom_point(aes(color = clarity)) + facet_grid(. ~ cut)
g2 + geom_point(aes(color = clarity)) + facet_grid(cut ~ .)
g2 + geom_point(aes(color = clarity)) + facet_grid(cut ~ clarity)
g3 + xlim(0, 10) + ylim(0, 30000) + theme(legend.position = "none")
g3 + xlim(0, 10) + ylim(0, 30000) + theme(legend.position = "bottom")
g3 + xlim(0, 10) + ylim(0, 30000) + theme(legend.position = "bottom", legend.title = element_blank())
g3 + xlim(0, 10) + ylim(0, 30000) + theme(legend.position = c(.8,.8))

g3 + xlim(0, 10) + ylim(0, 30000) + theme(legend.position = c(.8,.2))
g3 + theme_bw()
g3 + theme(panel.grid.major = element_line(colour = "red", linetype = "dotted"), panel.background = element_rect(fill = "green"))
