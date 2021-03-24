

getwd()

x= 35
if(x<30){
{"Esse numero é menor que 30"}  
}else
{"Este numero é maior que 30" }

x = 7
if(x<7){
  "este numero menor que 7"
} else if(x==7){
  "x é igual a 7"
}else {
  "este numero não é menor que 7"
}

x= 5
if(x==5){
  "beleza passou"
}else if(x>10){
  {"é maior que 10"}
} else
{"nao é nenhuma das alternativas acima"}

#ifalse 
x=5
ifelse(x < 6 ,"Correto")

x=4
if(x < 8){"é verdade" } else {"falso"}
num = 5
if(num>5) {"é maior que 5"} else  {"é menor 5 "}


y= 5
ifelse( x<6,"Correto",NA)

x =7
if( x<7) {"eh menor que 7"}else if(x>7)
{"eh maior que 7"} else
{"nenhum dos dois"}

#expressoes ifelse alinhadas 


vetor = c(7,5,4)
ifelse(vetor<5, " é menor que 5", ifelse(vetor==5, "é igual a 5","é maior que 5"))

func = function(x,y){
  ifelse(y<7, x+y, "Nao encontrado")
  
}

func(2,2)
func(40,7)
func(20,10)

#rep 
rep(rnorm(10),5)

#repeat
x = 1
repeat{
  x= x +3
  if(x>99)
    break
  print(x)
}


#loop for
for (i in 1:20) {
  print(i)
  
}
for(q in rnorm(10)){print(q)}
#loop for
for(i in data.frame(10:70)){print(i)}
for(q in data.frame(rnorm(12))) {print (q)}

#ignora elemento dentro do loop
for(i in 1:22){
  if(i ==23){
    if(i==13 | i ==15)
      next;
    print(i)
  }
  
  
  for(i in 1:22){
    if(i ==13 | i==15)
      break;
    print(i)}
  
  #loop while
  x = 1
  while(x<5){
    x=x+1;
    print(x)
  }
}

y= 6
while(y<5) {
 x = y+1
  print(x)
}
