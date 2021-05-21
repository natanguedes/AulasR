
install.packages("lattice")
library(lattice)

#scatterplot com lattice
xyplot(data = iris, groups ~ Species, Sepal.Length ~ Peal.Length) 
?xyplot
cars

library(datasets)
data(iris)
summary(iris)


Depth <- equal.count(quakes$depth, number=8, overlap=.1)
xyplot(lat ~ long | Depth, data = quakes)
update(trellis.last.object(),
       strip = strip.custom(strip.names = TRUE, strip.levels = TRUE),
       par.strip.text = list(cex = 0.75),
       aspect = "iso")

n <- colnames(iris)
n
xyplot(data = iris, groups~ Species, Sepal.Length ~ Petal.Length)


xyplot(Sepal.Length + Sepal.Width ~ Petal.Length + Petal.Width | Species, 
       data = iris, scales = "free", layout = c(2, 2),
       auto.key = list(x = .6, y = .7, corner = c(0, 0)))

?Titanic

barchart(class ~ Freq | Sex + Age, data =  as.data.frame(Titanic), groups~Survived, stack= T, layout= c(4,1), auto.key = list(title="Dados titanic", col= 2), scalees = list(x = "free" ))

