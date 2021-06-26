getwd()

install.packages("ggplot2")
library(ggplot2)
#plotando o gráfico básico com qplot
data(tips, package= "reshape2")
qplot(total_bill, tip, data=tips, geom="point")

#camada1

camada1 = geom_point(
  mapping = aes(x = total_bill, y= tip, color = sex),
  data =  tips, 
  size=3 )

ggplot() + camada1


?aes #ajuda
??aes #mais exemplos

help.search("aes")

#construindo modelo de regressão
modelo_base = lm(tip ~ total_bill, data = tips)
modelo_fit = data.frame(
  total_bill = tips$total_bill,
  predict(modelo_base, interval =  "confidence"))

head(modelo_fit)

#camada 2
camada2 = geom_line(
  mapping = aes(x = total_bill, y=fit),
                    data= modelo_fit,color = "darkred")          #REGRESSÃO POSITIVA
ggplot()+ camada1 + camada2



#camada3 

camada3 = geom_ribbon(
  mapping ~ aes(x ~ total_bill, ymin ~ lwr, ymax ~ upr), data = modelo_fit, 
  alpha = 0.3)

ggplot() + camada1 + camada2 + camada3
  
#versão otimizada

myplot = ggplot(tips, aes(x = total_bill, y= tip))+ geom_point(aes(color= sex)) + geom_smooth(method =  'lm' )
class(myplot)
print(myplot)


#ScatterPlot com linha de regressão
 
#DADOS
data = data.frame(cond= rep(c("Obs1","Obs2"), each=10), var1 = 1:100 + rnorm(100, sd= 9 ), var2 = 1:100 + rnorm(100, sd= 16 ))

#Plot

ggplot(data, aes(x = var1, y = var2))+ geom_point(shape = 1 ) + geom_smooth(method =  lm, color= "red", se= F )


#BAR PLOT 

#continuar..

?barplot
#preparando dados- número de casamentos de uma igreja
dados = matrix(c(300,100,120,542,36,46,38,421,218,327,106,650), nr=3, byrow =  T)
dados


#nomeando linhas e colunas na matriz
colnames(dados) = c("0","1-150","151-300",">300")
rownames(dados) = c("Jovem","Adulto","Idoso")
dados

#construindo barplot

barplot(dados, beside = T)
barplot(dados)
legend("topright", pch = 1, col = c("steelblue1","tan3","seagreen3"), legend = c("Jovem","Adulto","Idoso") )

#CONSTRUINDO PLOT - STACKED BAR PLOT
#AS 3 FAIXAS DE IDADE SÃO REPRESENTADAS NA MESMA COLUNAS PARA A DIFERENTES QUANTIDADES
barplot(dados, col = c("steelblue1","tan3","seagreen3"))


#criE UMA LEGENDA COM O GRÁFICO ANTERIOR
colors()
legend("topright", pch = 1, col= c("steelblue1","tan3","seagreen3"), legend =  c("Jovem","Adulto","Idoso"))


barplot(dados, beside = T, col = c("steelblue1","tan3","seagreen3"))
barplot(dados, beside = T, col = c("steelblue1","tan3","seagreen3","peachpuff1")  , legend =  c("Jovem","Adulto","Idoso"))

