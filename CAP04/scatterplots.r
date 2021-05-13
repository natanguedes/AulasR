
#define dados

getwd()

set.seed(67)
x = rnorm(10,5.7)
x
y= rpois(10,7)
y

z= rnorm(10,6,7)
z

t = rpois(10,9)
#criar o plot

plot(x,y, col=123, pch= 10 , main = "meu gráfico", col.main="red", cex.main=1.5, xlab = "variavel independente", ylab = "variavel dependente")

#adicionar outros dados

  points(z,t, col="blue", pch=4)

points(y, col = 777, pch = 9, )
legend(-6,5.9, legend = c("Nivel 1","Nivel 2", "Nivel 3"),
       col= c(123, "blue",777), pch = c(10,4,9), cex =  0.65, bty = "n")
