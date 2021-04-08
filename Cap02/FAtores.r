

#FATORES E FATORES ORDENADOS

#o termo fator se refere a tipos de dados estatisticos usados para armazenar variáveis categóricas que são muitos uteis em sumarização de estatisticas , plot e regressões.

#fatores representam uma maneira muito eficiente para armazenar valores de caracteres 
#porque cada caracter único é armazenado apenas uma vez e os 
#dados são armazenados como um vetor de inteiros
#criar fatores função factor(...,ord=T) ou ordered()

getwd()


vet = c("Macho","Femea","Macho","Fermea")
vet

factor = factor(vet)
factor
class(factor)
class(vet)

#variaveis categoricas nominal

animais = c("cavalo","zebra","tigre","macaco")
class(animais)
factor(animais)
levels(animais)

#possui categorias

graduacao = c("graduacao","doutorado","mestrado")
graduacao


#visao geral das variaveis via sumario
fator = factor(animais, order = T, levels = c("Doutorado","Mestrado","Bacharelado"))

fator
levels(fator)

summary(fator)


#datas

data = c(1,1,2,3,4,5,6,7)
fdata = factor(data)
fdata

#transformando para romanos
rdate = factor(data, labels = c("I","II","III","IV","V","VI","VII"))
rdate
vet2 = c("M","F","M","F")
vet2
fact = factor(vet2)
fact

RDATA = factor(vet2)
rdata = factor(RDATA)
rdata

romano = c("i","II","III")
romano = factor(romano)
romano
summary(romano)
levels(romano)


#fator nao ordenado

set = c("AA","B","RA","CC","CA","AA","BA","CC","CC")
set

table(set)
f.set= factor(set)
f.set
class(f.set)
is.ordered(f.set)


#fator ordenado

o.set = factor(set , levels = c("CA","BA","AA","CC","B"))
o.set
class(o.set)

is.ordered(o.set)

FATNAORDENADO = c("AA","B","BA","CC","CA","AA","BA","CC","CC")
FATNAORDENADO

#Criando niveis

f.set = factor(FATNAORDENADO)
f.set

class(f.set)
is.ordered(f.set)

o.set = factor(FATNAORDENADO, levels = c("AC","BA","AA","CC","DA","QA"), ordered =  T)

o.set
is.numeric(o.set)
table(o.set)

#parou em 03:04 parte 3/3

#fator e dataframe

o.set = factor(f.set, levels = c("CA","BA","AA","CC","B"), ordered  = T)
o.set

df = read.csv2("Cap02/etnias.csv", sep = ",", stringsAsFactors = FALSE )
df

#regressão
idade = as.numeric(df$Idade)
idade
etnia = as.numeric(df$Etnia)
etnia

summary(lm(df$Idade-df$Etnia, data = df))
#variavel do tipo fator


v = c("Natanael","Guedes")
v
names(v)= c("Nome","Sobrenome")
v

A = df$Etnia

nomes =df$Etnia

names(nomes) =  c("1","2","2","3","1","1","3","2","2","1","1")
nomes
typeof(nomes)
table(nomes)
summary(lm(df$nomes-df$idade))
           #Branco 1 , Pardo 2 , Negro 3
nomes
idade
lm(nomes,idade)
df$Etnia

v["Nome"]
df <- transform(df, z=c(1,2),  w=c(3,4))

df["EtniaNum"]<-c("0","mata B","mata B","mata A","mata B","mata B","matac","matac","mat8","mat6","mat9")
df["area"]
df
str(df)
?df
lm
levels(df$Etnia)
summary(df$Etnia)
levels(df$Idade)
#agora vamos fazer essas variaveis categoricas
plot(df$Idade, xlab = 'Etnia', ylab = 'Idade', main = 'Idade por etnia')
idade =df['Idade']
idade = factor(idade)
etnia = factor(etnia)
etnia

#summary 
levels(df$Etnia)
etnia = df['Etnia']
summary(lm(idade-etnia), data == df)

levels(df$Etnia)
etnia

#plot

plot(df$Idade, xlab = 'Etnia', ylab = 'Idade', main = "Idade por Etnia")


df[,6]
df
df1 <- as.numeric(as.character(df1))

etnia
 df1char 
df1 = df$Etnia
df2 = df$Idade
typeof(df1)
typeof(df2)
summary(lm(df1-df2))
#mais exemplo
 
data = c(1,2,3)
data
rdata = factor(data)
rdata

#transformando em romano 

emromano = factor(data, labels= c("I","II","III","IV","V","VI"))
emromano
table(emromano)

#fator não ordenado parou em fator e fatores ordenados 02:54
@#$set = 