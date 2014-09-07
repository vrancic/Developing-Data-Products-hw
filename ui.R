library(shiny)
library(datasets)

shinyUI(fluidPage(
  # Application title
  titlePanel("Euro cities distance"),
  
  sidebarLayout(
    sidebarPanel(
      
      selectInput("from", "From:", 
                  choices = unlist(labels(as.matrix(eurodist))[1])),
      
      selectInput("to", "To:", 
                  choices = unlist(labels(as.matrix(eurodist))[1]))
    ),
    
    mainPanel(
      helpText("This application is calculating distances between major european cities. 
                       Select the city you are starting from and the city that you are heading to. 
                       The distance will be calcualted automaticaly and echoed in the following section:"),
      
      h2(textOutput("distance"))
    )
  )
))
