library(tidyverse)

incendiosPorEstado <- function(){
  ggplot(data = incendios_UC, mapping = aes(incendios_UC$ANO,..count..)) +
    geom_bar(fill = "#e0441d") +
    labs(title = "Incêndios em unidades de conservação por ano",
         x = "Ano",
         y = "Número de incêndios")

}
