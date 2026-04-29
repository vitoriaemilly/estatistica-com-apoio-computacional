#questao 01) Quantos jogos ocorreram em cada dia da semana? 
#Crie um gráfico de barras para apresentar os resultados.
#a)Quais as médias de placar do mandante e do visitante nos jogos?
getwd()
setwd("/home/user/Desktop/estatisticacomapoio")


d <-read.csv("Arquivos de dados/campeonato-brasileiro-full.csv",sep = ",", header = TRUE)
names(d)

library(dplyr)
glimpse(d)


d$dia <- factor(d$dia, levels=c("Segunda-feira", "Terça-feira", "Quarta-feira", "Quinta-feira", "Sexta-feira", "Sábado", "Domingo"))

contagem <- table(d$dia)
contagem

barplot(contagem,
        col="#6A5ACD",
        main="Jogos por dia da semana",
        xlab="Dias da semana",
        ylab="Quantidade",
        las=1,
        cex.names = 0.8,   
        cex.axis = 0.8)0

#b)fazer a media de placar agora do mandante e visitante
glimpse(d)

media_mandante<- mean(d$mandante_placar, na.rm=TRUE)
media_visitante<-mean(d$visitante_placar, na.rm=TRUE)

media_visitante
media_mandante

#c)histograma dos gols, criar variavél
d$gol_partida <- d$mandante_placar+ d$visitante_placar

hist(d$gol_partida,
     xlab="Gol por partida",
     ylab="Frequência",
     main="Histograma de gols",
     col="#CD6889")

media_gol <- mean(d$gol_partida, na.rm=TRUE)
desvio_gol <- sd(d$gol_partida)

media_gol
desvio_gol
