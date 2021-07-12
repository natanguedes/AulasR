
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

#Grafico de colunas
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
