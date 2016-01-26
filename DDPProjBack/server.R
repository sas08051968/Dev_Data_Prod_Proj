library(shiny)
dummyfile <<- read.csv("dataJan-21-2016.csv")

#save data to file function
saveRespondData <- function(data) {
  data <- as.data.frame(t(data))
  # Write the file to the local system
  write.table(
    x = data,
    file = "respondants.csv",
    row.names =FALSE,
    col.names =FALSE,
    sep=",",
    quote = TRUE
  )
}

saveSurveyData <- function(data) {
  data <- as.data.frame(t(data))
  # Write the file to the local system
  write.table(
    x = data,
    file = "response.csv",
    row.names =FALSE,
    col.names =FALSE,
    sep=",",
    quote = TRUE
  )
}



# Define the fields we want to save from the form
responseFields <<- c("question1","question2","question3","question4","question5",
                     "question6","question7","question8","question9","question10",
                     "question11","question12","question13","question14","question15",
                     "question16","question17","question18","question19","question20",
                     "question21","question22","question23","question24","question25",
                     "question26","question27","question28","question29","question30",
                     "question31","question32","question33","question34","question35",
                     "question36","question37","question38","question39","question40",
                     "question41","question42")

respondantFields <<- c("refNo","collectDate","subjEmail","zipCode","ageRange","score")

shinyServer(
  function(input, output) {

    # Calculate scoreeach time survey submitted
    score <- reactive(sum(as.numeric(input$question1), as.numeric(input$question2),as.numeric(input$question3), as.numeric(input$question4),as.numeric(input$question5), as.numeric(input$question6),as.numeric(input$question7),as.numeric(input$question8),as.numeric(input$question9), as.numeric(input$question10),as.numeric(input$question11), as.numeric(input$question12),as.numeric(input$question13), as.numeric(input$question14),as.numeric(input$question15), as.numeric(input$question16),as.numeric(input$question17), as.numeric(input$question18),as.numeric(input$question19), as.numeric(input$question20),as.numeric(input$question21), as.numeric(input$question22),as.numeric(input$question23), as.numeric(input$question24),as.numeric(input$question25), as.numeric(input$question26), as.numeric(input$question27), as.numeric(input$question28),as.numeric(input$question29), as.numeric(input$question30),as.numeric(input$question31), as.numeric(input$question32),as.numeric(input$question33), as.numeric(input$question34),as.numeric(input$question35), as.numeric(input$question36),as.numeric(input$question37), as.numeric(input$question38),as.numeric(input$question39), as.numeric(input$question40),as.numeric(input$question41)))



    ########



    # convert ZIP to Census Tract
    cenTract <- reactive({input$zipCode})
    refNo <- reactive({input$refNo})
    collectDate <- reactive({as.character(input$collectDate)})

    # Whenever a field is filled, aggregate all form data
    responseData <- reactive({
      dataRe <- sapply(responseFields, function(x) input[[x]])
      dataRe <- paste(c(as.character(input$refNo),as.character(unlist(dataRe))),sep=",")
      return(unlist(dataRe))
    })
    respondantData <- reactive({
      dataRt <- sapply(respondantFields, function(x) input[[x]])
      dataRt <- paste(c(as.character(unlist(dataRt)), as.character(score())),sep=",")
      return(dataRt)
    })


    # When the Submit button is clicked, save the form data
    observeEvent(input$submit,{
      saveRespondData(respondantData())
      saveSurveyData(responseData())
    })

    # echo responses to user
    output$codedResponses <- renderText(responseData())
    output$studySumRec <- renderText(respondantData())
    #send back score to responder
    output$resultText0 <- renderText(score())


  })  # End server