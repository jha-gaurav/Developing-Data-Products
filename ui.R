#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Display Regression Line"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("slope",
                   "Slope",
                   min = -2.5,
                   max = +2.5,
                   value = 0, step = 0.1),
       sliderInput("intercept",
                   "Intercept",
                   min = -5,
                   max = +5,
                   value = 0, step = 0.1),
       submitButton("Submit")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot")
    )
  )
))
