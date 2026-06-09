# Questão 7)
# Um escritório de investimento acredita que o rendimento das diversas ações 
# movimentadas por ele foi de 24%. Para verificar esta hipótese, tomaram-se 
# 8 empresas ao acaso, obtendo-se os seguintes rendimentos (dados em %): 
# 23,6; 22,8; 25,7; 24,8; 26,4; 24,3; 23,9 e 25. Qual seria a conclusão?
# ==============================================================================

# 1. Armazenando os dados das 8 empresas (usando ponto para decimais)
rendimentos <- c(23.6, 22.8, 25.7, 24.8, 26.4, 24.3, 23.9, 25.0)
media_teste <- 24

# 2. Rodando o teste t bicaudal (padrão "two.sided")
# Como a questão não deu a significância, usamos o padrão de 5% (alpha = 0.05)
resultado_q7 <- t.test(rendimentos, mu = media_teste, alternative = "two.sided")

# 3. Exibindo o resultado no console
print(resultado_q7)

