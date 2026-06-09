#Uma amostra de 10000 itens de um lote de produção foi inspecionada, e o número de defeitos por
#item foi registrado na tabela abaixo. 
#Determine o intervalo de confiança para a proporção de itens defeituosos 
#na população, com índice de confiança de 98%.

n_total <- 10000

confianca <- 0.98

num_defeitos <- 3200 + 600 + 150 + 50

p_defeitos<- num_defeitos/n_total
p_defeitos

erro_padrao <- sqrt((p_defeitos * (1 - p_defeitos))/n_total)

alfa <- 1 - confianca
z<-qnorm(1-alfa/2)

margem_erro <- z * erro_padrao

lim_in <- p_defeitos - margem_erro
lim_sup <- p_defeitos + margem_erro

lim_in
lim_sup

p_limitein <- round(lim_in *100, 2)
p_limitesup <-round(lim_sup *100, 2)
