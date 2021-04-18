#if(condicao){
  #conjunto de tarefas
#}else}
#{outro conjunto de tarefas}
#ifelse(condicao,tarefa1,tarefa2)
#loop

#Loop For
for(i in 1:N){
  #CONJUNTOS DA DE TESTES
}

for (i in 1:10) {
 print("isso é um loop") 
}

#loop while
while(co){
  #conjuntos de tarefas
}

#ESTRUTURAS DE REPETIÇÕES

#rep(x,y)

#rep rep(repita x , y vezes)   ou então repeat()

#if else
x = 25
if (x<30){"Este numero é menor que 30"}

#chaves nao sao obrigatoria mas é recomendadas
#else
y=5
if(y<7){
  "Este é menor que 7"
}else {"este não é menor que 7"}

if(x>7)
  "menor que 5"

x = 7
if (x < 7 )
{"é menor que 7"
  } else if(x==7)
  "é igual a 7" else "maior que 7"

x = 8
if (x< 8) {"x é menor que 8"
} elseif(x>8)
{"não é menor que 8"}

#ifelse
X = 5
ifelse(x < 6,"Correto", NA)
x = 19
ifelse(x>9,"Correto",NA )

#expressoes ifelse aninhadas

x = c(1,1,1)
ifelse(x<5, "Menor que 5", 
ifelse( x==5,"igual a 5","Maior que 5"))

#estruturas dentro dos ifs

func = function(x,y){
  ifelse(y<7 , x+y ,"Não encontrado")
}

func(1,1)
func(1,4)
       

#rep 
rep(rnorm(10),5)

#repeat

x =1
repeat{
  x=x+3
  if(x>10) break; print(x)
}

#repeat
x = 1


#Loop for
# for(i in 1:20){print(i)}
for (q in rnorm(10)) { print(q)}
#ignora alguns elementos do loop

for (i in 1:22) {
  if(i==13 | i ==15)
    next
  print(i)
  
}

#interromper o loop
for (i in 1:22) {
  if(i==13)
    break;
  print(i)
}

#loop while

x = 1
while(x <5){
  x = x+1
  print(x)
}

#loop while nao executado

y = 6
while(y<5)
{
  y= y+10
  print(y)
}