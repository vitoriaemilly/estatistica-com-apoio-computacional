#No arquivo tempo_transito.csv você tem o tempo que 10000 pessoas passam dirigindo por dia.
#1P Selecione aleatoriamente 50 motoristas com idade entre 15 e 19 anos.
#P Qual é a probabilidade de que o tempo médio que que eles passam dirigindo por
#dia esteja entre 24,7 e 25,5 minutos? Suponha que σ = 1,5 minuto.

getwd()

transito <- read.csv("Arquivos de dados/tempo_transito.csv")

amostra_transito <- sample_n(filter(transito, Idade >=15 & Idade <=19), 50)

glimpse(amostra_transito)


n <- 50
sigma <- 1.5
media_esperada <- 25

# "erro padrão"
erro <- sigma / sqrt(n)

# a conta da probabilidade (Maior - Menor)
prob <- pnorm(25.5, media_esperada, erro) - pnorm(24.7, media_esperada, erro)

# Ver o resultado em %
round(prob * 100, 2)
