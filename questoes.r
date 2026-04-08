#a) Calcule a média da amostra; b) Calcule o mediana e os quartis 1 e 3;c) Calcule 
#a variância e o desvio padrão da amostra
dados <- c(96, 96, 102, 102,
           102, 104, 104, 108, 126, 126, 128, 128, 140, 156, 160, 160, 164 ,170.)

mean(dados) #calcular a média dos dados
median(dados) #mediana dos dados
var(dados) #variância
sd(dados)#desvio padrão
summary(dados) #parte do dado que estamos lidando

#moda
moda <- function(dados){
  
}

 quartis <- function (dados){
   q <- quantile(dados, probs = c(0.25,0.75))
   return(q)
 }
 
 quartis_resultado <- quartis(dados)
 print("Quartis (Q1 e Q3):")
 print(quartis_resultado)
 
diq <- function(dados){
  
}
