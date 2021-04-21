

getwd()

#criando vetores

vec1 = c(1001,1002,1003,1004,1005)
vec2 = c(0,1,1,0,2)
vec3 = c("verde","Laranja","Azul","Laranja","verde")

df = data.frame(vec1,vec2,vec3)
df

str(df)
str(df)
levels(df$vec3)

df$cat2 <- factor(df$vec2, labels = c("Divociado","Casado","Solteiro"))
df
str(df)
levels(df$cat2)
