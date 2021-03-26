
getwd()
num1 = 7
num1
class(num1)
mode(num1)

#painel Grid muda o modo de visualização das variaveis em enviroment

num1 =  7 #é do tipo inteiro sendo que foi armazenado como o tipo double
num1
class(num1)
mode(num1)

num2 = 16.62
num2
mode(num2)
typeof(num2)


#integer
#converter de numero para inteiro
is.numeric(num2)
u = as.integer(num2)
u                  #na letra u sabendo que o numero foi convertido para inteiro porque no enviroment mostra a variavel u com o value 16 L este L indica que foi convertido para inteiro

num2 #16.62
class(num2)
mode(num2)
typeof(num2)

as.integer("2.89")
as.integer("Joe")
as.integer('TRUE')
as.integer(TRUE)
as.integer(FALSE)
#character

char2 = "cientista"
char2
mode(char2)
typeof(char2)

#numeric complex
compl = 2.5 + 4i
compl

mode(compl)
typeof(compl)

sqrt(-1)
sqrt(-1-0.1)
sqrt(as.complex(-1+0i))


#logic
x=1; y=2
z= x> y
z
class(z)


u= TRUE ; v = FALSE
class(u)
u & v
u | v
!u


#operacoes com 0

5/0 #INF ao retorar inf quer dizer que é impossivel dividir um numero por 0

0/5

#erro 
'Joe'/5 ##Error in "Joe"/5 : argumento não-numérico para operador binário

