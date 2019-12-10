

library(shiny)
library(ggplot2)
library(imager)

function(input, output){
  
  output$out_plot1 = renderPlot({
    col_index = as.numeric(input$selecter1)
    
    g = ggplot(data=iris, aes(x=iris[,col_index], fill=Species))
    g = g + geom_histogram(binwidth = input$slider1, position = "identity", alpha = 0.6)
    g
    
  })
  
  output$out_img1 = renderPlot({
    img = load.image(input$button1)
    plot(img, axes = FALSE, xlab = "", ylab = "")
  })
}