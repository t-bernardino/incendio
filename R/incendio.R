#' @export


library(tidyverse)

incendiosPorEstado <- function(){

  incendioUC %>% filter(ANO > 2014) %>%
  ggplot(aes(ANO,..count..)) +
    geom_bar(fill = "#e0441d") +
    labs(title = "Ocorrências de incêndio registradas por ano",
         x = "Ano",
         y = "Número de incêndios")

}
