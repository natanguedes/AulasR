getwd()

vetorcaracter = c("pera","uva","maçã")
vetorcaracter

vetornumerico = c(1.90,2.80,3.0)
vetornumerico

vetorcomplexo = c(5.2+3i, 2.2+8i)
vetorcomplexo
is.vector(vetorcomplexo)
vetorlogico = c(TRUE, FALSE,TRUE,FALSE)
vetorlogico
is.vector(vetorlogico)

v= seq(1:16)
v
is.vector(v)

v2 =rep(1:5)
v2
is.vector(v2)


#indexação

a = c(1,2,3,4,5,6,7,88,9)
a[8]

b=c("pera","uva","macã")
b[1]
b[2]
b[3]
is.vector(b)

i = c("car","boy","girl")
u = c(1,2,3)
c(i,u)

x = c(1,2,4,5)
y = c(6,7,8,9)
c(x,y)

x = c(2,4,6,8)
y = c(3,7,8,6)
x*5
x/6
x+y
x-y

alfa = c(1,1,2,3)
beta = c(5,6,7,8)
alfa+beta


alfa = c(10,20,30)
beta = c(1,2,3,45,6,7,8,9)
alfa*beta


v = c("Goku","Gohan")
v
names(v)= c("pai","filho")
v

v['pai']
v['filho']
