library(shiny)
dummyfile <<- read.csv("dataJan-21-2016.csv")
responses <<- NULL
respondant <<- NULL

responseFields <<- c("question1","question2","question3","question4","question5",
                    "question6","question7","question8","question9","question10",
                    "question11","question12","question13","question14","question15",
                    "question16","question17","question18","question19","question20",
                    "question21","question22","question23","question24","question25",
                    "question26","question27","question28","question29","question30",
                    "question31","question32","question33","question34","question35",
                    "question36","question37","question38","question39","question40",
                    "question41","question42")
respondantFields <<- c("refNo","collectDate","eMail","cenTract","ageGroup","score")


codedResponses <<- NULL
studySumRec <<- NULL

shinyServer(
  function(input, output) {

    reactive({question1 <<- as.numeric(input$question1)
    question2 <<- as.numeric(input$question2)
    question3 <<- as.numeric(input$question3)
    question4 <<- as.numeric(input$question4)
    question5 <<- as.numeric(input$question5)
    question6 <<- as.numeric(input$question6)
    question7 <<- as.numeric(input$question7)
    question8 <<- as.numeric(input$question8)
    question9 <<- as.numeric(input$question9)
    question10 <<- as.numeric(input$question10)
    question11 <<- as.numeric(input$question11)
    question12 <<- as.numeric(input$question12)
    question13 <<- as.numeric(input$question13)
    question14 <<- as.numeric(input$question14)
    question15 <<- as.numeric(input$question15)
    question16 <<- as.numeric(input$question16)
    question17 <<- as.numeric(input$question17)
    question18 <<- as.numeric(input$question18)
    question19 <<- as.numeric(input$question19)
    question20 <<- as.numeric(input$question20)
    question21 <<- as.numeric(input$question21)
    question22 <<- as.numeric(input$question22)
    question23 <<- as.numeric(input$question23)
    question24 <<- as.numeric(input$question24)
    question25 <<- as.numeric(input$question25)
    question26 <<- as.numeric(input$question26)
    question27 <<- as.numeric(input$question27)
    question28 <<- as.numeric(input$question28)
    question29 <<- as.numeric(input$question29)
    question30 <<- as.numeric(input$question30)
    question31 <<- as.numeric(input$question31)
    question32 <<- as.numeric(input$question32)
    question33 <<- as.numeric(input$question33)
    question34 <<- as.numeric(input$question34)
    question35 <<- as.numeric(input$question35)
    question36 <<- as.numeric(input$question36)
    question37 <<- as.numeric(input$question37)
    question38 <<- as.numeric(input$question38)
    question39 <<- as.numeric(input$question39)
    question40 <<- as.numeric(input$question40)
    question41 <<- as.numeric(input$question41)
    question42 <<- input$question42
    })

    score <- reactive(sum(as.numeric(input$question1), as.numeric(input$question2),as.numeric(input$question3), as.numeric(input$question4),as.numeric(input$question5), as.numeric(input$question6),as.numeric(input$question7),as.numeric(input$question8),as.numeric(input$question9), as.numeric(input$question10),as.numeric(input$question11), as.numeric(input$question12),as.numeric(input$question13), as.numeric(input$question14),as.numeric(input$question15), as.numeric(input$question16),as.numeric(input$question17), as.numeric(input$question18),as.numeric(input$question19), as.numeric(input$question20),as.numeric(input$question21), as.numeric(input$question22),as.numeric(input$question23), as.numeric(input$question24),as.numeric(input$question25), as.numeric(input$question26), as.numeric(input$question27), as.numeric(input$question28),as.numeric(input$question29), as.numeric(input$question30),as.numeric(input$question31), as.numeric(input$question32),as.numeric(input$question33), as.numeric(input$question34),as.numeric(input$question35), as.numeric(input$question36),as.numeric(input$question37), as.numeric(input$question38),as.numeric(input$question39), as.numeric(input$question40),as.numeric(input$question41)))



########

#  create "blinded" reference number for record
    refNo = "8999999999"     # temporary demo dummy reference number

# create datestamp for collectDate
    collectDate =
      strftime(Sys.Date())

# convert ZIP to Census Tract
    cenTract = reactive({input$zipCode})

# store responses without identifiers
    codedResponses <<- reactive({paste(c(refNo,input$question1,input$question2,input$question3,input$question4,input$question5,input$question6,input$question7,input$question8,input$question9,input$question10,input$question11,input$question12,input$question13,input$question14,input$question15,input$question16,input$question17,input$question18,input$question19,input$question20,input$question21,input$question22,input$question23,input$question24,input$question25,input$question26,input$question27,input$question28,input$question29,input$question30,input$question31,input$question32,input$question33,input$question34,input$question35,input$question36,input$question37,input$question38,input$question39,input$question40,input$question41,input$question42), sep=",")})


    studySumRec <<- reactive({paste(c(refNo, collectDate,input$subjEmail,cenTract(),input$ageRange,score()), sep=",")})

    output$codedResponses <- renderText(codedResponses())
    output$studySumRec <- renderText(studySumRec())
#send back score to responder
    output$resultText0 <- renderText(score())

})

