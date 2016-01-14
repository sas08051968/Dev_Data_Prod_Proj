library(shiny)

shinyServer(
  function(input, output) {

    score <- reactive({sum(as.numeric(input$question1), as.numeric(input$question2), as.numeric(input$question3), as.numeric(input$question4), as.numeric(input$question5), as.numeric(input$question6), as.numeric(input$question7), as.numeric(input$question8), as.numeric(input$question9), as.numeric(input$question10), as.numeric(input$question11), as.numeric(input$question12), as.numeric(input$question13), as.numeric(input$question14), as.numeric(input$question15), as.numeric(input$question16), as.numeric(input$question17), as.numeric(input$question18), as.numeric(input$question19), as.numeric(input$question20), as.numeric(input$question21), as.numeric(input$question22), as.numeric(input$question23), as.numeric(input$question24), as.numeric(input$question25), as.numeric(input$question26), as.numeric(input$question27), as.numeric(input$question28), as.numeric(input$question29), as.numeric(input$question30), as.numeric(input$question31), as.numeric(input$question32), as.numeric(input$question33), as.numeric(input$question34), as.numeric(input$question35), as.numeric(input$question36), as.numeric(input$question37), as.numeric(input$question38), as.numeric(input$question39), as.numeric(input$question40), as.numeric(input$question41), as.numeric(input$question42))})


    output$resultText0 <- renderPrint(score())

  }
)
