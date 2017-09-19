#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
set.seed(100)
# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
          x <- runif(n = 300, min = -2, max = 2)
          e <- runif(n = 300, min = -1, max = 1)
          y <- x * input$slope + input$intercept - e
          plot(x, y, xlim = c(-5, 5), ylim = c(-5, 5), pch = 19, col = "blue",
               xlab = "Predictor", ylab = "Predicted", main = "Random Regression Line")
          mod1 <- lm(y ~ x)
          abline(mod1, lwd = 3, col = "red")
    
  })
  
})
