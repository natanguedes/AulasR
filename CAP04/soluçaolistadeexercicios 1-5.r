getwd()

#exercicio 1 Listar todos os arquivos do diretório de trabalho

getwd()


list.files()

#exercicio 2 criar um dataframe a partir de 3 vetores um de caracteres, um logico e um de numeros

vetcharacter <- c("A","B","C")
NUMVEC <- c(4.5,3.9,7.2)
logic <- c(TRUE,TRUE,FALSE)

df = data.frame(vetcharacter,NUMVEC,logic)
df

#exercicio 3 - considere o vetor abaixo 
#crie um loop que verifique  se há números
#maiores que 10 e imprima o numero
#e uma mensagem no console

vec = c(12,3,4,19,34)
vec

for (i  in 1:length(vec)) {
  if(vec[i]> 10){
    print("Este elemento do vetor é maior que 10")
  }else{
    print(vec[i])
    print("Este elemento é menor que 10")
  }
}