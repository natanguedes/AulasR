

#fatores 

#o termo fator se a tipos de dados estatisticos usados 
#para armazenar variáveis categóricas.  Fatores são variáveis categóricas que são muitos úteis em sumarização de statisticas, plot, e regressões

#fatores representam uma maneira muito
#eficiente para armazenar valores de caracteres
#porque cada carater unico é armazenado apenas uma vez
#e os dados são armazenados como um vetor de inteiros.

#para criar fator usa-se factor(), factor(..., ord=T) ou ordered

vec = c("Macho","Fermea","Fermea","Macho","Macho")
vec
class(vec)
vecfactor = factor(vec)
vecfactor
class(vecfactor)

#variaveis categoricas nominais

animais =c("Zebra","Pantera","Rinocerante","Macaco","Tigre")
animais
class(animais)
facAnimais = factor(animais)
facAnimais
class(facAnimais)
levels(facAnimais)

#variavel categorica ordinais 

grad = c("Mestrado","Doutorado","Bacharelado","Mestrado","Mestrado")
grad

gradf = factor(grad, order= T, levels = c("Bacharelado","Mestrado","Doutorado"))
gradf
class(gradf)
levels(gradf)


summary(gradf)
summary(grad)


vec2 = c("F","M","F","M","F","M")
vec2
fatvec= factor(vec2)
fatvec
summary(vec2)
summary(fatvec)


#mais exemplo
data = c(1,2,1,2,1,2,1)
data
d = factor(data)
d

