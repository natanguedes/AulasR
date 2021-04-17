
getwd()


str = c("expressao","regulares","na linguagem R","Permite padrões")
str

length(str)

#grep

grep("ex", str,value = F)
grep("r", str, value = T)
grep("\\d", str, value = F)
grep("\\d", str, value = T)

#data atual

hoje = Sys.Date()
hoje

class(hoje)
Sys.time()
Sys.timezone()


#formatando datas
#%d dia do mes em 2 digitos (dd)
#%m mes em 2 digitos (01)
#%y ano em 2 digitos 98
#%A dia da semana (1982)
#%a dia da semana abreviado (Fri)
#%B mes (July)
#%b mes abreviado (Jul)






#formatando hora

#%H Hora
#%M Minuto
#%S segundo
#%T formato reduzido %H:M:%S
?strptime


#formatando a saida as.Date()

as.Date("2018-08-20")
as.Date("Jun-28-18", format="%b-%d-%y")
as.Date("28 June, 2018", format="%d %B, %Y")


#Usando função format 

format(Sys.Date(), format= "hoje é %A")

#CONVERTENDO DATA
data = "Jun 13,'96 hours:23 minutes:01 seconds: 4$"
datac = 
data

#parou em 06:17
