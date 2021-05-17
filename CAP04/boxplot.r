
getwd()

#numero de carros num estacionamento

cars = matrix(c(0,2,4,688,0,807,909,312),  nr=4, nc=4, byrow = T )
cars


#nomeando linhas e colunas
colnames(cars) <-c("0","1-1500","151-300",">300")
cars
rownames(cars) <-c("jovem","adulto","idoso","TERCEIRA IDADE")
cars

colors()

barplot(cars,  beside = T, legend =  c("steelblue1","tan3","seagreen3"))

barplot(cars, col = c("steelblue1","tan3","seagreen3"), legend =  c("steelblue1","tan3","seagreen3"))

 



barplot(t(cars), beside = T, col= c("steelblue1","tan3","seagreen3"))
legend("topright", pch = 10,col = c("steelblue1","tan3","seagreen3"), legend =  c("steelblue1","tan3","seagreen3") )

barplot(cars, beside = T ,col = c("steelblue1","tan3","seagreen3") )
legend("topright", pch = 1,col = c("steelblue1","tan3","seagreen3"), legend =  c("steelblue1","tan3","seagreen3") )


barplot(t(cars), beside = T, col = c("steelblue1","tan3","seagreen3"))
legend("topright", pch = 1,col = c("steelblue1","tan3","seagreen3"), legend =  c("steelblue1","tan3","seagreen3") )


t(cars)
barplot(t(cars), beside = T, col = c("steelblue1","tan3","seagreen3","yellow1"))
        
