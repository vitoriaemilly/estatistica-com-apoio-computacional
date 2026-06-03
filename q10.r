# Dois grupos de pacientes foram avaliados quanto ao tempo de espera até atendimento.
grupo_a <- c(
  18, 21, 24, 25, 27, 29, 30, 32, 35, 36,
  38, 40, 42, 45, 48, 52, 55, 60, 72, 95
)

grupo_b <- c(
  8, 10, 12, 13, 15, 16, 18, 19, 21, 22,
  24, 25, 27, 28, 30, 33, 36, 40, 48, 62
)

dados <- data.frame(
  tempo = c(grupo_a, grupo_b),
  grupo = rep(c("Fluxo habitual", "Fluxo reorganizado"), each = 20)
)

dados

boxplot(tempo ~ grupo, data=dados,
        col="blue")

hist(grupo_a,
     col="coral")

mean(grupo_a);median(grupo_a)

#onde achar assimetria?
var(grupo_a) #grupo a:353.0105
var(grupo_b)#grupo b:353.0105

t.test(grupo_a, grupo_b, var.equal = F) #avaliar os dois grupos, teste de hipótese
# Gráfico Q-Q para avaliar normalidade

qqnorm(
  grupo_a,
  main = "Q-Q Plot - Grupo A",
  xlab = "Quantis teóricos da normal",
  ylab = "Quantis observados"
)

qqline(
  grupo_a,
  col = "red",
  lwd = 2
)

qqnorm(
  grupo_b,
  main = "Q-Q Plot - Grupo B",
  xlab = "Quantis teóricos da normal",
  ylab = "Quantis observados"
)

qqline(
  grupo_b,
  col = "red",
  lwd = 2
)

diferenca= grupo_b - grupo_a
#proximo de 0.5, analisa se a diferença é muito grande no gráfico
shapiro.test(diferenca)

# Exemplo: teste de Wilcoxon para grupos independentes

grupo1 <- c(20, 22, 19, 24, 25)
grupo2 <- c(28, 30, 27, 29, 26)

# Medianas dos grupos
median(grupo1)
median(grupo2)

# Teste de Wilcoxon (Mann-Whitney)
wilcox.test(grupo1, grupo2)
