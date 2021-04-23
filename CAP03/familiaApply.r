getwd()

# apply() array e matrizes
#tapply() # os vetores podem ser divididos em diferentes subsets
#lampply() #vetor e listas
#vapply() #similar a samply , com valor de retorno modificado
#rapply() similar a lampply()
#eapply() gera uma lista
#mapply() similar a samply , miltivariada
#by 

#list com loop
lista1 <- list(a= (1:20), b=(35:67))
lista1

vetor_a = 0
vetor_b = 0

for (i in lista1$a) {
  vetor_a = valor_a+i
  
}

for (j in lista1$b) {
  vetor_b = vetor_b+j
  
}
print(vetor_a)
print(vetor_b)

sapply(lista1,sum)

sapply(linha1,mean)

?apply

x <- matrix(c(20,13,65,32,45,12,76,49,82), nr=3, byrow = T)
x

apply(x,mean)
apply(x)
apply(x, 1,mean)
apply(x,2,mean)
apply(x,1,plot)

resultapply = apply(x,1,mean)
resultapply                    


escolas = data.frame(Aluno = c("Bob","Tereza","Marta","Felipe","Zacarias","Elton"),
                     Fisica = c(91,82,75,97,62,74), 
                     Matematica = c(99,100,86,92,91,87), 
                     Quimica =   c(56,72,49,68,59,77))

escolas$Matematica

#cálculo da média por aluno
escolas$Media = NA

escolas

escolas$Media = apply(escolas[,c(2,3,4)],1,mean)
escolas

escolas$Media = round(escolas$Media)
escolas$Media
escolas

tabelabasquete = data.frame(equipe = gl(5,5, labels = paste("Equipe", LETTERS[1:5])),
                            jogador = sample(letters,25),
                             numcestas = floor(runif(25, min = 0, max = 50)))

View(tabelabasquete)
         ?letters


install.packages("LETTERS")
#como calcular o total  o total de cestas por equipe
install.packages("sqldf")
library(sqldf)

sqldf("select equipe, sum(numcestas) from tabelabasquete group by equipe")

tapply(tabelabasquete$numcestas,tabelabasquete$equipe,sum)

tapply(tabelabasquete$numcestas,tabelabasquete$equipe,mean)


data = data.frame(species=c(rep(c(1,2,3),each=5)),
                  petal.length=c(rnorm(5,4.5,1),
                                 rnorm(5,4.5,1),
                                 rnorm(5, 4.5,1),
                                 petal.width=c(rnorm(5,4.5,1),
                                               rnorm(5,2.5,1),
                                               rnorm(5,4,1))))


data$species = factor(data$species)
View(data)

by(data, data$species, function(x){
  mean.pl = mean(x$petal.length)
})
?lapply

#parou em 06:19

getwd()
