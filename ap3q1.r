vendas <- c(25, 13, 8, 20, 25, 12, 10, 15)
propaganda <- c(11, 5, 3, 9, 12, 6, 5, 9)
temperatura <- c(2, 13, 16, 7, 4, 10, 13, 4)

# Criando as duas retas
reta_propaganda <- lm(vendas ~ propaganda)
reta_temperatura <- lm(vendas ~ temperatura)

# Vendo os resultados
summary(reta_propaganda)   # Esse vai dar o R² maior (~0.93), ou seja, é o melhor!
summary(reta_temperatura)

# Previsão para Propaganda = 8 (Usando a reta melhor)
predict(reta_propaganda, data.frame(propaganda = 8))
