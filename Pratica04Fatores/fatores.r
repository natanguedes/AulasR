




#faTORES

#o termo fator se refere a tipos de dados estatisticos usados para armazenar
#variáveis categoricas . Fatores são variáveis categóricas que são muito úteis
#em sumarização de estatisticas , plots e regressões.


#Fatores é utilizado para armazenar variáveis categoricas

#Fatores representam uma maneira muito eficiente de armazenar
#valores de caracteres, onde cada caracter é único e são armazenados em um vetor de inteiros 

#Fator nada mais é do que otimizar o armazenamento e o processamento de variáveis categóricas
#para a criação de fator utiliza-se a função factor()
#tipo de fator
#ordenado 
#factor(...ord=T) ou ordened()

getwd()

vetor = c("Feminino","Masculino","Feminino","Masculino")
vetor
fator1 = factor(vetor)
fator1
class(fator1)
class(vetor)


animals = c("urubu","macaco","boi")
animals
factor2 = factor(animals)
class(animals)
levels(fator1)
levels(factor2)

grad = c("Doutorado","Mestrado","Bacharelado","Mestrado","Mestrado")
gradfac = factor(grad, order= T, levels =c("Doutorado","Mestrado","Bacharelado"))
gradfac
levels(gradfac)

segvet = c("M","F","M","F") 
segvet
seg = factor(segvet)
seg

levels(segvet)<- c("MACHO","FERMEA") #ao inves de f e m coloca F=fermea e M = macho
segvet
summary(segvet)

dados = c(1.3,2.3,4.5)
datafator = factor(dados)
datafator
summary(datafator)
summary(seg)

