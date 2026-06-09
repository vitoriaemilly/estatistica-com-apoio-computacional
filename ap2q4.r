#Estamos desconfiados de que a média das receitas municipais per 
#capita das cidades pequenas (0 –20.000 habitantes) é maior do que a das 
#receitas do estado, que é de 1.229 unidades. Para comprovar
#ou não essa hipótese, sorteamos dez cidades pequenas, 
#e obtivemos os seguintes resultados: 1230; 582;
#576; 2093; 2621; 1045; 1439; 717; 1838; 1359.
#Usando um teste de hipótese a 1% de significância nós
#podemos rejeitar a hipótese nula?
# 1. Atualizando com os dados REAIS da Questão 4

dados <- c(1230, 582, 576, 2093, 2621, 1045, 1439, 717, 1838, 1359)
media_estado <- 1229
significancia <- 0.01

# 2. Rodando o teste t correto
resultado <- t.test(dados, mu = media_estado, alternative = "greater")
resultado
#teste de hipóteses
