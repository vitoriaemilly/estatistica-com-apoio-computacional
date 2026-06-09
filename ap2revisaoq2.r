#Um pesquisador está estudando a resistência de um determinado material sob determinadas condições.
#Ele sabe que essa variável é normalmente distribuída com desvio padrão de duas unidades.
#Utilizando os valores obtidos de uma amostra de tamanho
#9, determine o intervalo de confiança para a resistência média com um nível de confiança 90%.
#
#Qual o tamanho da amostra necessário para que o erro cometido, ao estimarmos a resistência
#média, não seja superior a 0,01 unidade com probabilidade 0,90?
 
dados <- c(4.9, 7.0, 8.1, 4.5, 5.6, 6.8, 7.2, 5.7, 6.2)
tamanho <- 9
desvio<-2

media<-mean(dados)
confianca <-0.90

erro_padrao <- desvio/ sqrt(tamanho)

alfa <- 1-confianca
z<- qnorm(1-alfa/2)

margem_erro <- (z * erro_padrao)

lim_in<- media - margem_erro
lim_sup <- media + margem_erro

lim_in
lim_sup

erro_tolerado <- 0.01

tamanho_necessario <- (z * desvio / erro_tolerado)^2
n_final <- ceiling(tamanho_necessario)
n_final
