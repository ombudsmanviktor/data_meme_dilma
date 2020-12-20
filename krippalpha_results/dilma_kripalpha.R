
v1 <- read.csv(file = "~/Downloads/Cópia de Codificação Amostra - v1.csv")
v2 <- read.csv(file = "~/Downloads/Cópia de Codificação Amostra - v2.csv")
v3 <- read.csv(file = "~/Downloads/Cópia de Codificação Amostra - v3.csv")
v4 <- read.csv(file = "~/Downloads/Cópia de Codificação Amostra - v4.csv")
v5 <- read.csv(file = "~/Downloads/Cópia de Codificação Amostra - v5.csv")
v6 <- read.csv(file = "~/Downloads/Cópia de Codificação Amostra - v6.csv")
v7 <- read.csv(file = "~/Downloads/Cópia de Codificação Amostra - v7.csv")
v8 <- read.csv(file = "~/Downloads/Cópia de Codificação Amostra - v8.csv")
v9 <- read.csv(file = "~/Downloads/Cópia de Codificação Amostra - v9.csv")
v10 <- read.csv(file = "~/Downloads/Cópia de Codificação Amostra - v10.csv")
v11 <- read.csv(file = "~/Downloads/Cópia de Codificação Amostra - v11.csv")
v12 <- read.csv(file = "~/Downloads/Cópia de Codificação Amostra - v12.csv")
v13 <- read.csv(file = "~/Downloads/Cópia de Codificação Amostra - v13.csv")

install.packages("icr")
install.packages("rel")
install.packages("Rcpp")

library(Rcpp)
## Requisitar a biblioteca
library(icr)
library(irr)

install.packages("~/Downloads/Rcpp_1.0.5.tgz", repos = NULL, type="source")

## Importar um dataframe conforme o exemplo
data(codings)
codings

## Realizar teste de confiabilidade
alpha1 <- krippalpha(v1,
                    bootstrap = TRUE, bootnp = TRUE, cores = 2)
alpha2 <- krippalpha(v2,
                     bootstrap = TRUE, bootnp = TRUE, cores = 2)
alpha3 <- krippalpha(v3,
                     bootstrap = TRUE, bootnp = TRUE, cores = 2)
alpha4 <- krippalpha(v4,
                     bootstrap = TRUE, bootnp = TRUE, cores = 2)
alpha5 <- krippalpha(v5,
                     bootstrap = TRUE, bootnp = TRUE, cores = 2)
alpha6 <- krippalpha(v6,
                     bootstrap = TRUE, bootnp = TRUE, cores = 2)
alpha7 <- krippalpha(v7,
                     bootstrap = TRUE, bootnp = TRUE, cores = 2)
alpha8 <- krippalpha(v8,
                     bootstrap = TRUE, bootnp = TRUE, cores = 2)
alpha9 <- krippalpha(v9,
                     bootstrap = TRUE, bootnp = TRUE, cores = 2)
alpha10 <- krippalpha(v10,
                     bootstrap = TRUE, bootnp = TRUE, cores = 2)
alpha11 <- krippalpha(v11,
                     bootstrap = TRUE, bootnp = TRUE, cores = 2)
alpha12 <- krippalpha(v12,
                     bootstrap = TRUE, bootnp = TRUE, cores = 2)
alpha13 <- krippalpha(v13,
                     bootstrap = TRUE, bootnp = TRUE, cores = 2)
alpha14 <- krippalpha(v14,
                     bootstrap = TRUE, bootnp = TRUE, cores = 2)
alpha15 <- krippalpha(v15,
                     bootstrap = TRUE, bootnp = TRUE, cores = 2)
alpha16 <- krippalpha(v16,
                     bootstrap = TRUE, bootnp = TRUE, cores = 2)
alpha17 <- krippalpha(v17,
                     bootstrap = TRUE, bootnp = TRUE, cores = 2)
alpha18 <- krippalpha(v18,
                     bootstrap = TRUE, bootnp = TRUE, cores = 2)
alpha19 <- krippalpha(v19,
                      bootstrap = TRUE, bootnp = TRUE, cores = 2)
## Apresentar resultados
print(alpha1)
print(alpha2)
print(alpha3)
print(alpha4)
print(alpha5)
print(alpha6)
print(alpha7)
print(alpha8)
print(alpha9)
print(alpha10)
print(alpha11)
print(alpha12)
print(alpha13)

print(alpha14)
print(alpha15)
print(alpha16)
print(alpha17)
print(alpha18)
print(alpha19)

nmm<-matrix(c(1,1,NA,1,2,2,3,2,3,3,3,3,3,3,3,3,2,2,2,2,1,2,3,4,4,4,4,4,
              1,1,2,1,2,2,2,2,NA,5,5,5,NA,NA,1,1,NA,NA,3,NA),nrow=4)
kripp.alpha(v1)
kripp.alpha(v2)
kripp.alpha(v3)
kripp.alpha(v4)
kripp.alpha(v5)
kripp.alpha(v6)
kripp.alpha(v7)
kripp.alpha(v8)
kripp.alpha(v9)
kripp.alpha(v10)
kripp.alpha(v11)
kripp.alpha(v12)
kripp.alpha(v13)

library(rel)
kra(v1)
kra(v1)

kripp.alpha(v1)

data <- cbind(rbind(1,2,3,3,2,1,4,1,2,NA,NA,NA),
              rbind(1,2,3,3,2,2,4,1,2,5,NA,3),
              rbind(NA,3,3,3,2,3,4,2,2,5,1,NA),
              rbind(1,2,3,3,2,4,4,1,2,5,1,NA))
kra(data)

## Plotar gráfico com resultados
plot(alpha)
