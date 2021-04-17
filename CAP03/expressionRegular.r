
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

#operaçoes com datas

diadehoje = as.Date("2006-02-11", format = "%Y-%m-%d")
diadehoje
diadehoje+1
diadehoje+30


date = as.POSIXct("2016-01-14 11:24:321")
date

#convertendo   data em formato especifico

dts = c(1127056501,1104295502,1129233601,111982601,1132519502,1119826801,1132519502,112529801,111328901)
dts = date
dts

class(date)
date
class(dts)

mydates = structure(dts, class= c('POSIXT','POSIXCT') )
mydates

dts

#função ISODATE FORMATO PADRÃO

a = ISOdate(2001,2,23)
a
b = ISOdate(2002,3,21)
b
b - a

difftime(b,a, units = "weeks")

#pacote lubridate
install.packages("lubridate")
library(lubridate)

ymd("20180420")
mdy("08-04-2018")
dmy("04/06/2018")


chegada = ymd_hms("2016-06-04 17:00:00", tz="Pacific/Auckland")
chegada
partida = ymd_hms("2016-08-10 14:00:00", tz = "Pacific/Auckland")
second(chegada)
second(chegada) = 10
chegada
wday(chegada)
wday(chegada, label = T)
class(chegada)


#criar objeto que especifica data de inicio e de fim
interval(chegada, partida)

tml.lub = ymd_hms("2020-05-20 23:55:26")
tml.lub

tml.dechr = hour(tml.lub) + minute(tml.lub)/60 + second(tml.lub)/3600
tml.dechr
force_tz(tml.lub, "Pacific/Auckland")


#Gerando um dataframe de datas
sono = data.frame(bad.time(c( ymd_hms("2011-09-01 02:11:03","2013-09-02 20:00:01")),
                  c("2019-04-20 22:51:06","2013-09-04 20:00:31"),
c("2019-03-04 21:01:20","2014-09-21 20:00:55"),c("2019-02-2001 12:23","2000-03-04 22:14:52"),c("2002-04-55 22:00:55")))
sleep.time = dhours(c(6.74,7.96,7.01,6.21, 7.42, 6.45, 8.25))
head(sono)
                  
                
