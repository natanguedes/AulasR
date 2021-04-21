#fatores

#o termo fator 
#se refere a tipos de dados estatisticos usado para armazenar
#variaveis categoricas  . Fatores são variaveis categoricas que são muito uteis
#em sumarização de estatisticas,plots e regressões.

#factor() função para criar fator
#fator ordenado factor(...,ord=T) OU ordered()
#

vec1 = c("Macho","Femea","Fermea","Macho")
vec1

fator = factor(vec1)
fator
class(vec1)
class(fator)

#variavel categorica nominal

animais = c("Zebra","macaco","Gato","Tigre")
animais
class(animais)
facanimal = factor(animais)
facanimal
class(facanimal)
levels(facanimal)

#variaveis categorica nominais

grad = c("Mestrado","Doutorado","Bacharelado")
grad
fatorgrad = factor(grad, order= TRUE, levels = c("Doutorado","Mestrado","Bacharelado"))
levels(fatorgrad)
grad
fatorgrad
summary(fatorgrad)
summary(grad)


vec = c("M","F","M","F","M","F","M")
vec
meufator = factor(vec)
meufator
summary(vec)
summary(meufator)


#mais exemplos

data = c(1,2,3,4,5,6)
data
dt = factor(data)
dt

romano = factor(data, labels =c( "I","II","III","IV","V","VI"))
romano


#CRIAR NIVEIS NAO SIGNIFICA HIERARQUIA

SET1 = c("AA","BB","CC")

SET1
class(SET1)
is.ordered(SET1)
SET1
factor(SET1)
#FATOR ORDENADO

a.set = factor(SET1, levels = c("BB","CC","AA"), ordered = T)
a.set

ordered(a.set)
a.set

