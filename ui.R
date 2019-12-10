
library(shiny)


 
fluidPage(
  
  titlePanel(h1("shinyであそぶ")),
  
  sidebarLayout(      
    
    sidebarPanel(
      
      selectInput(
        inputId = "selecter1", label = "変数を選んでね．", 
        choices = list(
          "Sepal.Length" = 1, "Sepal.Width"  = 2,
          "Petal.Length" = 3,"Petal.Width"  = 4
        ),
        selected = 1),
      
      br(),
      
      sliderInput(
        inputId = "slider1", label = "binの大きさを調整するよ．",
        min = 0, max = 0.5, value = 0.25
      ),
      
      br(),
      
      radioButtons(
        inputId = "button1", label = "好きな人を選んでね．",
        choices = c("よっちー" = "yotti.jpg", "ひこにゃん" = "hiko.jpg", "Hadley Wickham (表示に時間かかる)" = "wickham.png"),
        selected = "yotti.jpg")
    ),
    
      
      
    mainPanel(
      
      plotOutput(outputId = "out_plot1"),
      
      imageOutput(outputId = "out_img1")
    
    )
    
  )
)