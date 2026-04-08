#dados para o histograma
dados <- c( 96, 96, 102, 102, 102, 104, 104, 108, 126, 126, 128,128, 140, 156, 160, 160, 164,
            170, 115, 121, 118, 142)

#raiz quadrada da quantidade de observação
k <- round(sqrt(length(dados)))

hist(dados, 
     nclass=k,
     col="#AEEEEE",
     main="Histograma de teste",
     xlab= "Linhas por mil habitantes",
     ylab= "Frequência")

mean(dados) #mean é pra calcular a média dos dados
x <- c(1,3,0,0,2,4,1,2,5,6)
median(x) #mediana dos dados 
sort(x) #colocar em ordem
t <- table(x)
subset ( table ( x ) , table ( x )== max( table ( x )))
