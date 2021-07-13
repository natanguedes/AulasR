
#Pratica VISUALIZAÇÕES interativa


getwd()
install.packages('googleVis')
install.packages(c("devtools","RJSONIO", "knitr", "shiny", "httpuv"))

library(devtools)
install_github("mages/googleVis",)

library(googleVis)
demo(googleVis)

df = data.frame(Pais = c("BR","CH","AR"), Exportacoes = c(10,13,14), Importacoes= c(23,32,32))

#Grafico de linhas
Line = gvisLineChart(df)
plot(Line)

,#Grafico de colunas
coluna = gvisLineChart(df)
plot(coluna)


#grafico de barras

bar = gvisBarChart(df)

#grafico de pizza
pie = gisBarChart(df)
plot(df)

#Grafico de pizza

pie = gisPieChart(CityPopularity)
pie

#Grafico de barras honrizontais
bar = gvisBarChart(df)
bar

#graficos de barras horizontais

bar = gvisBarChart(df)
plot(bar)


#Grafico combinados
Combo <- gvisComboChart(df,xvar = "Pais", yvar= c("Exportasções","Importações"), options =  list(seriesType = "bars", series= '{1: {type:"line"' ))

plot(Combo)

#scatter chart
Scatter <-gvisScatterChart(women,
                           options = list(options="none", lineWidth=2, pointSize=0, title="women",  vAxis="{title:'weigth (in)'}", width=300, heigth=300))
plot(Scatter)


#BUBBLE


Bubble <- gvisBubbleChart(Fruits, idvar="Fruit", 
                          xvar="Sales", yvar="Expenses",
                          colorvar="Year", sizevar="Profit",
                          options=list(
                            hAxis='{minValue:75, maxValue:125}'))
plot(Bubble)


#Customizando
M <- matrix(nr=6,nc=6)""
M[col(M) == row(M)]<- 1:6
dat <- data.frame(x=1:6, M)
SC = gvisScatterChart(dat, options = list(title="Customizing points", legend="rigth", pointSize = 30, series="{0: (pointShape: 'cicle'), 1:{pointshape: 'triagle'}, 2:{pointShape: 'square'}, 3:{pointShape: 'diamond'}, 4:{pointShape: 'star'}, 5:{pointShape: polygon} "))

plot(SC)

Gauge

Gauge <- gvisGauge(CityPopularity, options = list(min=0, max=800, greenFrom=500, greenTo=800, yellowFrom=300, yellowTo=500,redFrom=0, redTo=100,  width=400, heigth=300))

plot(Gauge) 











