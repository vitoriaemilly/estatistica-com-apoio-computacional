getwd()
# Definindo a pasta onde estão os seus arquivos da matéria
setwd("c:/Users/livra/OneDrive/Documentos/estatistica-com-apoio-computacional")

#O número médio de acidentes por mês em certo cruzamento é três.
#1P Qual é a probabilidade de, em qualquer mês, 
#quatro acidentes ocorrerem nesse cruzamento?

 #prob exata com a media
prob_4 <-dpois(x=4, lambda = 3)

porcentagem <- round(prob_4 * 100, 2)
#1P Verifique as probabilidades de que ocorram 
#de 0 a 15 acidentes e plote o gráfico da distribuição.
