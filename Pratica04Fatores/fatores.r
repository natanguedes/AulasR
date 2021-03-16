




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
#A classe factor serve para designar categorias para um vetor. Essa classe é semelhante a um vetor da classe character, mas tem importancia maior nas análises estatísticas já que designam um número finito (predefinido) de categorias. Tanto números quanto caracteres podem ser convertidos em fatores usando a função factor. Esses fatores podem não serem ordenados representado apenas diferentes categorias ou podem representar categorias ordenadas. A função ordered gera fatores ordenados, ou seja que as categorias tem diferentes níveis que são maiores uns que os outros.



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

#exemplo
data = c(1,2,2,3,1,7,3,3,3,1,2,3,3,1)
data
 
#ALGARISMO ROMANO

RDATA = factor(data, labels = c("I","II","III","iv"))
RDATA

set = c("AA","B","BA","CC","CA","AA","CC","CC")
set


#R criando niveis de hierarquia
f.set = factor(set) 
f.set



f.set2 = factor(set)
f.set2

class(f.set)

is.ordered(f.set2)



#FATORES ORDENADOS


