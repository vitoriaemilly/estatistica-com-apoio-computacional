#As contas de telefone celular dos habitantes de uma cidade estão no arquivo contas_celular.csv.
#1P Colete uma amostra aleatória de 100 contas de telefone celular desta população.
#1P Estime a média e o desvio padrão da da população usando essa amostra.
#1P Depois, esboce um gráfico da distribuição amostral.

getwd()

dados <- read.csv("Arquivos de dados/contas_celular.csv")
glimpse(dados)

amostra_contas <- sample_n(dados, 100)
amostra_contas

class(amostra_contas$Conta)
media_amostra <- mean(amostra_contas$Conta, na.rm = TRUE)
media_amostra

desvio_amostra <- sd(amostra_contas$Conta, na.rm=TRUE)
desvio_amostra

plot(density(amostra_contas$Conta, na.rm=TRUE),
     main="Distribuição amostral contas de telefone",
     col="darkblue",
     ylab ="Densidade",
     xlab ="Contas de celular",
     lwd=2
     )

hist(amostra_contas$Conta,
     main="Histograma da amostra de contas",
     col="red")
