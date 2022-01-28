#' @export


library(tidyverse)

incendiosPorEstado <- function(){

  registro_incendios %>% filter(ANO > 2014) %>% filter(ANO < 2021) %>%
  ggplot(aes(ANO,..count..)) +
    geom_bar(fill = "#e0441d") +
    labs(title = "Ocorrências de incêndio registradas por ano",
         x = "Ano",
         y = "Número de incêndios")

}
