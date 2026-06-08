#De experiências passadas, sabe-se que o desvio padrão da altura de crianças da 5a série do 1o grau é 5cm.
#a) Colhendo uma amostra de 36 dessas crianças, observou-se a média de 150cm. Qual o intervalo
#de confiança de 95% para a média populacional?
#b) Que tamanho deve ter uma amostra para que o intervalo 150 ± 0,98 tenha 95% de confiança?

desvio <-5
confianca <-0.95

n <-36
media_a <-150

#a)
alpha <- 1 - confianca

z<-qnorm(1-alfa/2)
