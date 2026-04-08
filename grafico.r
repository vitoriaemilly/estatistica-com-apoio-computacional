tabela <- c(48.89, 51.11)
tabela
names(tabela)<- c("Ativa", "Sedentária")
tabela
barplot(tabela, 
        xlab="Categorias",
        ylab="POrcentagem %",
        xlin=c(0,60),
        col=c("maroon", "seashell"),
        width=c(0.5, 0.5),
        xlim=c(0,2),
        main="Gráfico em barra")
        
