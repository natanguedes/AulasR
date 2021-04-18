

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
data = c(1,2,1,2,1,2,1,3)
data
d = factor(data)
d 

romanos = factor(data, labels = c("I","II","III"))
romanos
#fatores nao ordenado

set1 = c("AA","B","BA","CC","CA","AA","BA","CC","CC")
set1
f.set1 = factor(set1, ordered = T)
f.set1

#fatores e dataframe

df = read.csv2("CAP03/etnias.csv", sep = ",")
is.ordered(f.set1)
is.numeric(f.set1)

#Variavel do tipo fator

str(df)
levels(df$Etnia)
summary(df$Etnia)

View(df)
boxplot(df$Idade~df$numEtnia, xlab = "Etnia", ylab = "Idade", main =  "Idade por etnia")

df$Idade-df$numEtnia
summary(lm(df$Idade~df$numEtnia), data= df)

str(df)

df$Estado_Civil.cat = factor(df$Estado_Civil, labels = c("Solteiro","Casado","Divorciado"))
df
