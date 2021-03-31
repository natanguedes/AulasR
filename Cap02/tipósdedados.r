
getwd()

num1 = 2
num1
class(num1)
mode(num1)


#numeric sao todos os numeros criados em R no modo numeric
#sao armazenados como numero decimal (double)


num = 7
num

class(num)
mode(num)
typeof(num)

# Integer 
# convertendo tipo numeric para numero decimal double

num = 7
num
class(num)
mode(num)
typeof(num)


num2 = 16.62
num2
class(num2)
 mode(num2)
typeof(num2) 


#integer
#convertendo tipos numeric para integer
is.integer(num2)
y = as.integer(num2)
y
mode(num2)
typeof(num2)
class(y)


as.integer('3.21')
as.integer('Joe')

#character

 char = 'a'
char
mode(char)
typeof(char)

char = "A"
char
mode(char)
typeof(char)
as.integer(TRUE)
as.integer(FALSE)
as.integer('TRUE')
char = "cientistA"
char
mode(char)
typeof(char)


char3 = c("Data","Science","Academy")
char3
mode(char3)
typeof(char3)

#complex
complex = 2.5+5i
complex
mode(complex)
typeof(complex)



sqrt(-1)
sqrt(-1-0i)
sqrt(as.complex(-1))

#logic 
x =1 ; y = 2
z = x>y
z
class(z)


x = 1 ; z = 3
z = x>y
z
class(z)


u = TRUE; b = FALSE
 class(u)
class(b) 
u&b
u | b
!u

sqrt(-1)
sqrt(-1+0i)
sqrt(as.complex(-1))

#logic
x=1; y=3;
z = x>y
z
class(z)

#operacao com 0

5/0
0/5


#erro
'Joe'/5
