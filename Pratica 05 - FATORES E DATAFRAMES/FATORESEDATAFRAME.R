
getwd()
vec= c(1001, 1002,1003,1004,1005)
#criando vetores

vec2 = c(0,1,1,0,2)
vec3= c("verde","azul","branco","roxo","preto")

df= data.frame(vec,vec2,vec3)
df
str(df)

df$cate= factor(df$vec3, labels = c("cor1","cor2","cor3","cor4","cor5"))
df$cate
cate
df
str(df) #parei no 02:33
