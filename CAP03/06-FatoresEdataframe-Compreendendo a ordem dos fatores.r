
#criando vetores

v1 = c(1001,1002,1003,1004)
v2 = c(0,1,1,0)
v3 = c("verde","Laranja","Azul","verde")

df = data.frame(v1,v2,v3)
df

str(df)


levels(df)

s=factor(df$v3, labels = c("cor1","cor2",'cor3'))
str(s)
df               

df$estadocivil= factor(df$v3, labels = c("Solteiro","Casado","Divociado"))
df
str(s)
str(df)
df
levels(df$estadocivil)
