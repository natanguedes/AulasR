# 
# 
# #As variáveis podem ter valores numéricos ou não numéricos, e podem ser classificadas da seguinte forma:
# 
# Variáveis Quantitativas
# As variáveis quantitativas são características que podem ser descritas por números, sendo estas classificadas entre contínuas e discretas.
# 
# – Variáveis discretas: a variável é avaliada em números que são resultados de contagens e, por isso, somente fazem sentido números inteiros. Exemplos: número de filhos, número de bactérias por litro de leite, número de cigarros fumados por dia.
# 
# – Variáveis contínuas: a variável é avaliada em números que são resultados de medições e, por isso, podem assumir valores com casas decimais e devem ser medidas por meio de algum instrumento. Exemplos: massa (balança), altura (régua), tempo (relógio), pressão arterial, idade.
# 
# Variáveis Qualitativas
# As variáveis qualitativas (ou categóricas) são as características que não possuem valores quantitativos, mas, ao contrário, são definidas por categorias, ou seja, representam uma classificação dos indivíduos. E podem ser nominais ou ordinais.
# 
# – Variáveis nominais: não existe ordenação dentre as categorias. Exemplos: sexo, cor dos olhos, fumante/não fumante, doente/sadio.
# 
# – Variáveis ordinais: existe uma ordenação entre as categorias. Exemplos: escolaridade (1º, 2º, 3º graus), estágio da doença (inicial, intermediário, terminal), mês de observação (janeiro, fevereiro,…, dezembro).
# 
# Entretanto, as distinções são menos rígidas do que a descrição acima insinua. Uma variável originalmente quantitativa pode ser coletada de forma qualitativa.
# 
# Por exemplo, a variável idade, medida em anos completos, é quantitativa (contínua); mas, se for informada apenas a faixa etária (0 a 5 anos, 6 a 10 anos, etc…), é qualitativa (ordinal). Outro exemplo é o peso dos lutadores de boxe, uma variável quantitativa (contínua) se trabalharmos com o valor obtido na balança, mas qualitativa (ordinal) se o classificarmos nas categorias do boxe (peso-pena, peso-leve, peso-pesado, etc.).

#$variavel discreta numero inteiro
set.seed(14)                # Ajustar semente aleatória
idades <- rchisq(200, 10)    # Gerar 200 observações
hist(idades) 

#retirado de http://www.leg.ufpr.br/~walmes/ensino/dsbd/7-vis-graphics.html#6_gr%C3%A1fico_para_duas_vari%C3%A1veis_cont%C3%ADnuas
 


#quantitativa continua
altura = c(1.3, 1.33, 1.4, 1.42, 1.45, 1.5, 1.5, 1.52, 1.55, 1.56, 1.58, 1.6, 1.62, 1.64, 1.65, 1.67, 1.68, 1.68, 1.7, 1.72, 1.72, 1.74, 1.8, 1.83, 1.85)
altura
hist(altura,  
     main = "Altura dos alunos do 1º ano do Ensino Médio", 
     xlab = "Altura dos alunos", ylab = "Freq. Absoluta", 
     col = c("violet"), 
     border = FALSE)

 

#Qualitativa nominal         versao do R 3.6.3
 
library(ggplot2)
# Barplot
df <- data.frame(
        group = c("Male", "Female", "Child"),
        value = c(25, 25, 50)
)
head(df)
bp<- ggplot(df, aes(x="", y=value, fill=group))+
        geom_bar(width = 1, stat = "identity")
bp

pie <- bp + coord_polar("y", start=0)
pie





  grades<-c("Graduação","Pós-graduação-","mestrado","doutorado","pós-doutorado")
 Marks<-sample(grades,40,replace=T,prob=c(.2,.3,.25,.15,.1))
 Marks
barplot(table(Marks),names.arg=grades,col = c("lightblue", 
                                                      "lightcyan", "lavender", "mistyrose",  "cornsilk"),
                main="Variavel categórica")
