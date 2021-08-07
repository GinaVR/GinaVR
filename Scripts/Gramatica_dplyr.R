
# Gramatica dplyr
#Gina Vargas
# 02 de agosto del 2021

install.packages("nycflights13")
library(dplyr)
library(nycflights13)
library(ggplot2)

sqrt(mean(flights$distance))

flights$distance %>% mean() %>% sqrt()

# Leer una base de datos

"Datos/eventos_de_platano.csv" %>% read.csv(stringsAsFactors = T) %>% summary()

datos_platano <- "Datos/eventos_de_platano.csv" %>% read.csv(stringsAsFactors = T)

datos_platano %>% head()

ggplot <- datos_platano %>% ggplot(aes(x=NO_ARBOLES, y=AREA_UM)) + geom_point() + 
  theme_bw()

ggsave("Resultados/plot_area_arboles.png")
