#Web Scraping in R
#https://www.outspokenmarket.com/blog
#Leandro Guerra

library('rvest')

#Insira a URL alvo - Ajuste Derivativos - Pregao
url <- 'http://localhost/j/representantes_estado.html'

#Le o codigo HTML da url indicada
site <- read_html(url)

#Escolhe qual o elemento HTML para coletar - resultado em HTML
info_Ajuste_HTML <- html_nodes(site,'table')

#Converte o HTML para texto
info_Ajuste <- html_text(info_Ajuste_HTML)

#Visualizacao do Texto
head(info_Ajuste,20)

#Como melhorar a visualiza?ao e captura das tabelas?
head(info_Ajuste_HTML)

lista_tabela <- site %>%
  html_nodes("table") %>%
  html_table(fill = TRUE)

#Visualiza?ao
str(lista_tabela)

head(lista_tabela[[1]], 10)

pie(table(lista_tabela[[1]]$Estado))


