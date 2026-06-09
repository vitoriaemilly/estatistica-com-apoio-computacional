#Para os últimos 9 anos, foram obtidos os seguintes resultados relativos a precipitação
#pluviométrica anual em uma certa região: 30,5; 34,1; 27,9; 35,0; 26,9; 30,2; 28,3; 31,7; 25,8.
#Construa um teste de hipóteses para saber se a média da precipitação pluviométrica anual
#é maior que 30,0 unidades. Utilize um nível de significância de 5%.

#1. Armazenando os dados brutos da precipitação (usando ponto para decimais)
precipitacao <- c(30.5, 34.1, 27.9, 35.0, 26.9, 30.2, 28.3, 31.7, 25.8)

# 2. Definindo os parâmetros da questão
media_teste <- 30.0     # O valor que queremos testar contra
significancia <- 0.05   # Nível de significância de 5%

# 3. Rodando o teste t unilateral à direita ("greater")
resultado_q5 <- t.test(precipitacao, mu = media_teste, alternative = "greater")

# 4. Exibindo o resultado no console
print(resultado_q5)

