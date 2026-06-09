# Questão 6.
# A receita média, em porcentagem, dos quase 600 municípios de um estado tem 
# sido 7%. O governo pretende melhorar esse índice e, para isso, está estudando 
# alguns incentivos. Para verificar os efeitos desses incentivos, sorteou 
# 10 cidades e estudou quais seriam as porcentagens investidas neles. Os 
# resultados foram, em porcentagem, 8, 10, 9, 11, 8, 12, 16, 9, 12, 13. 
# Admitindo-se que esses números realmente venham a ocorrer, os dados trazem 
# evidência de melhoria?
# ==============================================================================

# 1. Armazenando os dados das 10 cidades (em porcentagem inteira)
cidades <- c(8, 10, 9, 11, 8, 12, 16, 9, 12, 13)

# 2. Média histórica de referência (7%)
media_historica <- 7

# 3. Rodando o teste t unilateral à direita ("greater") para testar melhoria
resultado_q6 <- t.test(cidades, mu = media_historica, alternative = "greater")

# 4. Exibindo o resultado no console
print(resultado_q6)

# --- atenção ---
# p-valor = 0.00041 (menor que 0.05) -> REJEITA H0.
# Conclusão: Sim, os dados trazem evidências de melhoria!

