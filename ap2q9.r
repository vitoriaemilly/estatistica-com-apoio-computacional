# ==============================================================================
# Questão 9.
# Um médico deseja saber se uma certa droga reduz a pressão arterial média. 
# Para isso, mediu a pressão arterial em cinco voluntários, antes e depois da 
# ingestão da droga, obtendo os dados do quadro abaixo. Você acha que existe 
# evidência estatística de que a droga realmente reduz a pressão arterial média?
# ==============================================================================

# 1. Criando os dados da tabela diretamente na mão
antes  <- c(68, 80, 90, 72, 80)
depois <- c(60, 71, 88, 74, 76)

# 2. Guardando num data.frame como anotaste na imagem
dados_q9 <- data.frame(Antes = antes, Depois = depois)

# 3. Rodando o teste t pareado (paired = TRUE)
# Como queremos testar se "Antes > Depois" (redução), podemos usar:
resultado_q9 <- t.test(dados_q9$Antes, dados_q9$Depois, 
                       paired = TRUE, 
                       alternative = "greater")

# 4. Exibindo o resultado
print(resultado_q9)
