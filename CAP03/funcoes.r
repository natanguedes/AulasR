

teste = sapply(c(1:10))
function(x){x %% 2 ==0}

#funçoes internas
c()
matrix()
seq()
help()
contributors()

?sample
args(sample)
args(mean)    
args(sd)

#funções Built-in
abs(-4i)
sum(c(1:5))
round(c(1.1:5.8))
round(c(1:5))
rev(c(1:5))
seq(1:5)
sqrt(rev(c(1:5)))
sort(rev(c(1:25)))
append(c(1:5), 6)

vec1 = c(1.5,2.5,8.4,1.7,6.3)
vec1

vec3 = rev(vec1)
vec3
?abs
#funções dentro de funções
plot(rnorm(3000))
mean(c(1:5))
mean(c(abs(vec1), abs(vec3)))


#criando funções
myfunc = function(x){x + x}
myfunc(4)
class(myfunc)

myfunc = function(x){x^x
  valor = x^x
  print(valor)  
  }
myfunc(2)

dados = function(){ 
         num = sample(1:6, size = 1)
         num
    }


dados


jogandodados = function(){
   num = sample(1:6,size = 1)
   num
  
}
jogandodados()  

#escopo
print(num)
num = c(1:30)
num


#funçoes sem, numeros definidos
vec2 = c(10,15)
vec2
vec3 = c("a","b","c")
vec3


myfunc = function(...){
  df = data.frame(cbind(...))
  print(df)
  
}

myfunc(vec2)
myfunc(vec1)
myfunc(vec3)


x= 1:1000000
x

mysqrt = function(numero){
  resp = numeric(length(numero))
  for (i in seq_along(numero)) {
    resp[i] = sqrt(numero[i])
  }
  return(resp)
}

system.time(x2x <- mysqrt(x))
system.time(x2b <- sqrt(x))

#sua maquina pode representar resultado diferente

identical(x2x, x2b)

