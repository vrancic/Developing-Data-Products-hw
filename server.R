library(shiny)
library(datasets)

# Define server logic required to summarize and view the selected dataset
shinyServer(function(input, output) {
  
  
  # Calculate distance among Europe cities based on dataset.eurodist
  output$distance <- renderPrint({
    as.matrix(eurodist)[input$from, input$to]
  })
  
})
