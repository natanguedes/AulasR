getwd()#obter diretorio
setwd()#define o diretoria de trabalho
contributors()#pessoas que contribuir para linguagem r
licence()#license  do R
sessionInfo()#info da sessão
print("oi")

max.temp <- c(22, 27, 26, 24, 23, 26, 28)
barplot(max.temp)


# barchart with added parameters
barplot(max.temp,
main = "Maximum Temperatures in a Week",
xlab = "Degree Celsius",
ylab = "Day",
names.arg = c("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"),
col = "darkred",
horiz = TRUE)
