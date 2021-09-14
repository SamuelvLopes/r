

library('rvest')

url <- 'http://localhost/j/representantes_estado.html'

site <- read_html(url)

info_Ajuste_HTML <- html_nodes(site,'table')

info_Ajuste <- html_text(info_Ajuste_HTML)

head(info_Ajuste,20)

head(info_Ajuste_HTML)

lista_tabela <- site %>%
  html_nodes("table") %>%
  html_table(fill = TRUE)

#Visualiza?ao
str(lista_tabela)

head(lista_tabela[[1]], 10)
library(RColorBrewer)
library(plotrix)
pie3D(table(lista_tabela[[1]]$Estado),labels =lista_tabela[[1]][[2]],main="Politicos por estado",radius=3.2)

