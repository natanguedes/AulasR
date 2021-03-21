

getwd()
# vetores de condição lógica
cria_x <- TRUE
cria_y <- FALSE

# só executa se cria_x = TRUE
if (cria_x) {
  x <- 1
}

# só executa se cria_y = TRUE
if (cria_y) {
  y <- 1
}

# note que x foi criado
exists("x")
## [1] TRUE

# note que y não foi criado
exists("y")
## [1] FALSE


h = 25
if(h<-25 && h > 10)
exists("h")

numero <- 1

if (numero == 6) {
  cat("o numero é igual a 1")
} else {
  cat("o numero não é igual a 1")
}
## o n

imparoupar=function(x){
  if(x %% 2 ==0){
     return("par")
} else{
  return("impar")
}
}
imparoupar(4)
imparoupar(5)
x=6
ifelse(x>5, "maior que 5", NA)
