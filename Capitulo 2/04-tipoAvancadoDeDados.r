
#vetor tem apenas 1 dimensão e um tipo de dado


vetor = c(1:30)
vetor
length(vetor)
mode(vetor)
class(vetor)
typeof(vetor)

#matriz possui duas dimensão e um tipo de dado

matriz1 = matrix(1:20, nrow = 2)
matriz1
length(matriz1)
class(matriz1)
typeof(matriz1)

#array possui 2 a 3 mais dimensoes e 1 tipo de dados
array = array(1:5, dim = c(3,3,3))
array
length(array)
class(array)
typeof(array)

#data.frame utiliza mais de duas dimensões
#, ou seja, é uma matriz diferentes tipos de dados 

View(iris)

length(iris)
mode(iris)
class(iris)
typeof(iris)

#listas

# coleção de diferentes tipos de objeto
# diferentes tipos de dados são possíveis e comuns

lista = list(a= matriz1, b=vetor)
lista

length(lista)
mode(lista)
class(lista)
typeof(lista)

?list

#funcao também sao vista como objeto em R
func2 = function(x){
  var = x + x
  return(var)   
}
func2(2)
class(func2)


#lista os objeto
objects()

#  [1] "array"      "char1"      "char2"     
# [4] "compl"      "func2"      "lista"     
# [7] "matriz1"    "nome"       "num1"      
# [10] "num2"       "retornaABC" "texto"     
# [13] "u"          "v"          "valor"     
# [16] "var"        "var3"       "var4"      
# [19] "var5"       "var6"       "var8"      
# [22] "vetor"      "x"          "y"         
# [25] "z"   
rm(z) #remove o objeto z 
z #tenta imprimir o valor de z no console
#aparece a mensagem no console objeto z não
vetor
rm(z,vetor)
z
vetor
objects()


