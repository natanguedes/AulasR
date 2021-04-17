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
dados <- rchisq(200, 10)    # Gerar 200 observações
hist(dados) 

#retirado de http://www.leg.ufpr.br/~walmes/ensino/dsbd/7-vis-graphics.html#6_gr%C3%A1fico_para_duas_vari%C3%A1veis_cont%C3%ADnuas

# Diagrama de dispersão. aa
url <- "http://www.leg.ufpr.br/~walmes/data/duster_venda_260314.txt"
dus <- read.table(file = url,
                  header = TRUE,
                  sep = "\t",
                  encoding = "utf-8")
str(dus)