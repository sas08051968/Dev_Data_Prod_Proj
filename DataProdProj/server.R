library(shiny)

shinyServer(
  function(input, output) {

    score <- reactive({sum(as.numeric(input$question1), as.numeric(input$question2), as.numeric(input$question3), as.numeric(input$question4), as.numeric(input$question5), as.numeric(input$question6), as.numeric(input$question7), as.numeric(input$question8), as.numeric(input$question9), as.numeric(input$question10), as.numeric(input$question11), as.numeric(input$question12), as.numeric(input$question13), as.numeric(input$question14), as.numeric(input$question15), as.numeric(input$question16), as.numeric(input$question17), as.numeric(input$question18), as.numeric(input$question19), as.numeric(input$question20), as.numeric(input$question21), as.numeric(input$question22), as.numeric(input$question23), as.numeric(input$question24), as.numeric(input$question25), as.numeric(input$question26), as.numeric(input$question27), as.numeric(input$question28), as.numeric(input$question29), as.numeric(input$question30), as.numeric(input$question31), as.numeric(input$question32), as.numeric(input$question33), as.numeric(input$question34), as.numeric(input$question35), as.numeric(input$question36), as.numeric(input$question37), as.numeric(input$question38), as.numeric(input$question39), as.numeric(input$question40), as.numeric(input$question41), as.numeric(input$question42))})

#  create "blinded" reference number for record
    refNo = "8999999999"    # temporary demo dummy reference number

# create datestamp for collectDate
    collectDate =
      strftime(Sys.Date())

# convert ZIP to Census Tract
    cenTract = reactive({input$zipCode})

# store responses without identifiers
    output$codedResponses <- reactive({paste(c(refNo,input$question1,input$question2,input$question3,input$question4,input$question5,input$question6,input$question7,input$question8,input$question9,input$question10,input$question11,input$question12,input$question13,input$question14,input$question15,input$question16,input$question17,input$question18,input$question19,input$question20,input$question21,input$question22,input$question23,input$question24,input$question25,input$question26,input$question27,input$question28,input$question29,input$question30,input$question31,input$question32,input$question33,input$question34,input$question35,input$question36,input$question37,input$question38,input$question39,input$question40,input$question41,input$question42), sep=",")})

# store responder summary

    output$studySumRec <- reactive({paste(c(refNo, collectDate,input$subjEmail,cenTract(),input$ageRange,score()), sep=",")})

#send back score to responder
    output$resultText0 <- renderText(score())

  }
)
