




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
data = c(1,2,3,4,5)
data
 
#ALGARISMO ROMANO

RDATA = factor(data, labels = c("I","II","III","iv","V"), ordered =  T)
RDATA 

set = factor(RDATA, levels = c("CA","BA","AA","CC","B"), ordered = T)
set

is.ordered(set) #pergunta se o fator é ordenado
as.numeric(o.set)
table(set)


getwd()
install.packages("csv2")
carregacsv = read.csv2("Pratica04Fatores/etnias.csv", sep=",")
carregacsv

#variável do tipo fator é utilizado para variável categórica


str(carregacsv)
view(carregacsv)

#Niveis de fatores
#internamente o R armazena valores inteiros e faz um mapeamento para as
#strings em ordem Alfabetica e agrupa as estatisticas por niveis . Agora, é possível visualizar a contabilização para cada categoria.
levels(carregacsv$Etnia)
summary(carregacsv$Etnia)
 Idade1 <- c(21,22,24,18,19,27,22,22,23,21,23,21)

boxplot(carregacsv, col="blue",  main = "idade por Etnia")
#regressao
#nao funciona
lm(carregacsv )

 Idade <- c(21,22,24,18,19,27,22,22,23,21,23,21)
# Depois, podemos usar a função summary(variável) para verificar as medidas descritivas da variável
 summary(Idade)
 
Estado_Civil = factor(carregacsv$Estado_Civil, labels =  c("Casado","Solteiro","Divociado"))
Estado_Civil 
str(Estado_Civil)#variaveis com fator de tres niveis 0-Solteiro , 1-Casado e 2- Divociado
