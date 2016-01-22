

library(shiny)

# Define UI for dataset viewer application
shinyUI(fluidPage(
  
    # Application title.
    titlePanel("Predict Next Word"),
  
    sidebarLayout(
        sidebarPanel(
            textInput("obs", "Enter Your Text Here:"),
            
            helpText("Only english statement are supported"),
            
            submitButton("Predict Next Word")
        ),
      
      mainPanel(
          h3("You entered the following text:"),
          div(textOutput("Original"), style = "color:purple"),
          br(),
          br(),
          h3("Most Likely Next Word:"),
          div(textOutput("BestGuess"), style = "color:green"),
          br(),
          h3("The guession on your words are based on the following data:"),
          tableOutput("view")
    )
  )
))
