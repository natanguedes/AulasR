
getwd()

#definindo dataframe
df = data.frame()
df
class(df)


#criando vetores vazios
nome = character()
idade = numeric()
itens = numeric()
codigo = numeric()

df = data.frame(c(nome,idade,itens,codigo))
df

#criando vetores
pais = c("Brasil","Marrocos","JAPÃO","Russia")
nome = c("Pedro","Paulo","José","Afonso")
codigo = c(2134,2135,2136,2137,2138)

pes = data.frame(pais,nome,codigo)
pes

#adicionando vetor existente
olhos = c("verde","azul","marrom","vermelho")
cbind(pes,olhos)


#obter informacoes do dataframe

str(pes)
dim(pes)
length(pes)

#obtendo valor de um dataframe
pes$pais
pes$nome

#unico valor do dataframe
pes[1,1]
pes[1,2]

#numero de linhas e colunas
nrow(pes)

ncol(pes)

#primeiros elementos de um dataframe

head(pes)
head(iris)

#ultimo elemento dataframe
tail(pes)
pes
tail(mtcars)

#filtros

pesq=(pes$nome, c('codigo'))

colnames(pes) = c("var1","var2","var3","var4")

