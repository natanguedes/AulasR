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