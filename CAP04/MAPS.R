
install.packages("ggplot2")
install.packages("maps")
install.packages("mapdata")
#https://www.youtube.com/watch?v=h2IPWVXaUuU


library(ggplot2)
library(maps)
library(mapdata)

mapa = map_data("world")
mapa

#visualiza dataframe
dim(mapa)
View(mapa)

ggplot()+geom_polygon(data = mapa, aes(x=long,y=lat, group=group ))+coord_fixed()
ggplot()+geom_polygon(data = mapa, aes(x=long,y=lat, group=group ),fill=NA, color="blue")+coord_fixed()
g1=ggplot()+geom_polygon(data = mapa, aes(x=long,y=lat, group=group ),fill="seagreen1", color="blue")+coord_fixed()
g1
#marcando pontos no mapa
