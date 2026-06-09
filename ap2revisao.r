#De experiências passadas, sabe-se que o desvio padrão da altura de crianças da 5a série do 1o grau é 5cm.
#a) Colhendo uma amostra de 36 dessas crianças, observou-se a média de 150cm. Qual o intervalo
#de confiança de 95% para a média populacional?
#b) Que tamanho deve ter uma amostra para que o intervalo 150 ± 0,98 tenha 95% de confiança?

#a)Colhendo uma amostra de 36 dessas crianças, 
#observou-se a média de 150cm. Qual o intervalo
#de confiança de 95% para a média populacional?

desvio <-5
confianca <-0.95

n <-36
media_a <-150

#do total
erro_padrao<- desvio/ (sqrt(n))
erro_padrao

#valor de z para 95% de confiança
#1 menos confiança tem o valor do erro das caudas
alfa <- 1 - confianca #0.05
z<-qnorm(1-alfa/2)

margem_erro <- z * erro_padrao

lim_in <- media_a - margem_erro
lim_sup <- media_a + margem_erro

# imprime
cat("O intervalo de confiança para 95% é de [", round(lim_in, 2), ";", round(lim_sup, 2), "]\n")

#b) e tamanho deve ter uma amostra para 
#que o intervalo 150 ± 0,98 tenha 95% de confiança?

erro_tolerado <- 0.98
#tamanho da amostra
tamanho <- (z * desvio /erro_tolerado)^2

#arredonda p cima
n_final <- ceiling(tamanho)

n_final
