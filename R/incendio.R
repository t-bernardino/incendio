#' @export


library(tidyverse)
library(shiny)

ui <- fluidPage(


  titlePanel("FIRE!"),


  sidebarLayout(


    sidebarPanel(


      sliderInput(inputId = "bins",
                  label = "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)

    ),


    mainPanel(


      plotOutput(outputId = "distPlot")

    )
  )
)


server <- function(input, output) {

  output$distPlot <- renderPlot({


    x <- incendioUC$ANO
    x <- na.omit(x)
    bins <- seq(min(x), max(x), lenght.out = input$bins +1)

    hist(x, breaks = bins, col = "#e0441d", border = "blue",
         xlab = "Ocorrência de Incêndios",
         main = "Incêndios ocorridos de 2014 a 2020")


  })
}



shinyApp(ui = ui, server = server)
