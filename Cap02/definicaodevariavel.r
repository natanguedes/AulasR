

#variavel eh uma regiao na memória do computador
#intepretador é o executavel da linguagem R , OU SEJA, um software


#criando variavel

a = 100
a
mode(a)
help("mode") #qual o tipo de a
sqrt(a) #raiz quadrada de a


#atribuindo um valor de uma variavel a outra

b = a
b
mode(a)
typeof(b)
help("typeof")
help("mode")
sqrt(a)
#uma lista pode ser uma lista de elemento
var2 = c("primeiro","segundo") 
var2

mode(var2)

#uma função pode ser uma variavel

var2 = function(x){x+3}
var2(2)

#mudar o modo do dado

var5 = as.character(a)
var5
mode(a) 
mode(var5)

#simbolo de atribuição = ou <-

x <- c(1,2,3,4)
x

c(6,8,10,12) ->y 
y
assign("x", c(6,3,4,-2))
x

#posição especifica
x[2]


#verificar objetos
ls()
objects()

#verificando o valor em uma determinada posição
x[0]
 
rm(x)
x

