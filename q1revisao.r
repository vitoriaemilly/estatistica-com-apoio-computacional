#questao 01) 
setwd("C:/Users/livra/OneDrive/Área de Trabalho/eac")
getwd()

install.packages("dplyr")
library(dplyr)
install.packages("ggplot2")
library(ggplot2)

dir()

dados <- read.csv("Arquivos de dados/campeonato-brasileiro-full.csv")

glimpse(dados)


#1.0P Quantos jogos ocorreram em
#cada dia da semana?
#Crie um gráfico de barras para 
#apresentar osresultados

dados$dia <- factor(dados$dia, 
                    levels = c("Segunda-feira", "Terça-feira", "Quarta-feira", 
                               "Quinta-feira", "Sexta-feira", "Sábado", "Domingo"))

contagem <- table(dados$dia)

# Conta a frequência de cada número
frequencias <- table(dados)

# Mostra o valor que ocorre com maior frequência
moda <- names(frequencias)[which.max(frequencias)]
print(moda)

#variavel pra tirar os zerados, já que não existe n,rm=true no pie()
remove_contagem <- contagem[contagem >0]

barplot(contagem, 
        ylab = "Frequência", 
        xlab = "Dias da semana", 
        main = "Gráfico jogos dia da semana", 
        col = "blue")
#o barplot é mais prático pra criar grafico de barras do que com o gg plot

pie(remove_contagem,
    main="Jogos por dia da semana",
    col= c("#97FFFF","#528B8B",
           "#00688B","#1E90FF", "#00CDCD", "#008B8B" ),
    cex= 1.2)
 # Quais as médias de placar do mandante e do visitante nos jogos?

media_mandante <- round(mean(dados$mandante_placar, na.rm=TRUE), 2)
media_visitante <- round(mean(dados$visitante_placar, na.rm=TRUE), 2)
media_mandante
media_visitante

#Crie um histograma da quantidade de gols por partida. 
#Qual a média e o desvio padrão da
#quantidade de gols nos jogos?
 glimpse(dados)
 #não existe variavel de gols, soma com os placares que existem
dados$gol_partida <- dados$mandante_placar + dados$visitante_placar

hist(dados$gol_partida,
     col="pink",
      main="Histograma de gols por partida",
     xlab="Gol por partida",
     ylab="Frequência"
)

desvio_padrao <- sd(dados$gol_partida, na.rm=TRUE)
desvio_padrao

#praticando um pouco de if/else em R, mesmo que exista a função max
if(media_mandante > media_visitante){
  media_maior <- "Dos mandantes"
}else {
  media_maior <- "Dos visitantes"
}

cat (" A maior média é: ", media_maior)

