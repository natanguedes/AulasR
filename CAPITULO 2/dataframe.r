getwd()
#criando dataframe vazio

install.packages("pastecs")
library(pastecs)
stat.desc(pesq) 

dataframe = data.frame()
class(dataframe)
dataframe

#criando vetor vazio

 nome = character()
 idade = numeric()
 itens = numeric()
 codigos = integer()
df = data.frame(c(nome,idade,itens,codigos)) 
df

#criando vetores
paises = c("PORTUGAL","ESPANHA","CHILE","COLOMBIA","ISRAEL")
nome = c("Bruno","marta","Israel","manoel", "rodrigo")
altura = c(1.10,2.20,3.30,4.40,5.40)
codigo = c(5434,3232,5432,7644,8754)
pesq = data.frame(paises,nome,altura,codigo)
pesq

#adicionando vetor ao dataframe existente

cores = c("amarelo","azul","verde","marom","roxo")
pesq = cbind(pesq,cores )
pesq

#informações sobre dataframe
str(pesq)
dim(pesq)
length(pesq)


#obtendo vetor de um dataframe
pesq$paises
pesq$altura

#extraindo um valor

pesq[1,1]
pesq[2,2]


#numero de linhas e colunas
nrow(pesq)
ncol(pesq)

#primeiros elementos de um dataframe
head(pesq)
head(mtcars)
#ultimos elementos de um dataframe
tail(pesq)

#filtro para um subset de dados que 

pesq[altura < 1.60,]
pesq[altura>1.60, c("Código","Nome")]
pesq
?mtcars
mtcars
View(mtcars)
#dataframe nomeados

names(pesq) = c("Pais","Nome","Altura","Código","Cores")
pesq
#nomear colunas
colnames(pesq) = c("Pais","Nome","altura","Código","Cor")
pesq
#nomear linhas
rownames(pesq)<- c("obs1", "obs2","obs3","obs4","obs5")
pesq

#carregando arquivo csv
?read.csv

paciente= data.frame(read.csv(file= "E:\\Natanael\\tsi\\3periodo\\estatistica\\cap2\\2-Arquivos-Cap02\\pacientes.csv", header = T, sep = ";"))

#visualizando dataset
View(paciente)
head(paciente)
Summary.data.frame(paciente)
#visualizando variável
paciente$ID

summary(paciente)
#Histograma 
idade = as.numeric(paciente$ID) 
hist(idade,border = "blue", col = "pink")
 ?hist
?summary
factor(paciente)
#combinando dataset
d= merge(pesq,paciente)
d
View( d)
