
getwd()

#numero de carros num estacionamento

cars = matrix(c(1,2,4,6,7,8,9,12),  nr=4, nc=4)
cars


#nomeando linhas e colunas
colnames(cars) <-c("0","1-1500","151-300")
cars
rownames(cars) <- c("jovem","adulto","idoso")
cars


barplot(cars,  beside = T, legend =  c("steelblue1","tan3","seagreen3"))

barplot(cars, col = c("steelblue1","tan3","seagreen3"), legend =  c("steelblue1","tan3","seagreen3"))

 



barplot(t(cars), beside = T, col= c("steelblue1","tan3","seagreen3", "peachpuff1"))
legend("topright", pch = 10,col = c("steelblue1","tan3","seagreen3"), legend =  c("steelblue1","tan3","seagreen3") )

barplot(cars, beside = T ,col = c("steelblue1","tan3","seagreen3") )
legend("topright", pch = 1,col = c("steelblue1","tan3","seagreen3"), legend =  c("steelblue1","tan3","seagreen3") )

