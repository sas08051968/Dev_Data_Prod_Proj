library(shiny)


shinyUI(fluidPage(

  headerPanel(h2("Life Stress Survey", style="text-align:center")),
  column(4,
    h2("Instructions", style="text-align:center"),
    p('If a life event has occurred for you, select "Yes". Otherwise check "No" or leave unchecked.'),
    p('When the survey has been completed press "Submit and your score will be calculated and the score and its interpretation with respect to your 2 year illness risk will be returned.'),
    #collectData<-Sys.Date(),
  p("For the purposes of future follow-up an email is requested. In 1 and 2 years an email form will be sent to you with 2 simple outcome questions."),
  textInput(inputId="subjEmail", label="Your email address", value = NULL, width = '200px'),

  p("To apply the data by age, we request your age range. "),
  selectInput(inputId="ageRange", "Age range now:",
              c("under 18" = "17",
                "18 to 25" = "20",
                "26 to 35" = "30",
                "36 to 45" = "40",
                "46 to 55" = "50",
                "56 to 64" = "60",
                "over 65" = "65"), width="100px"),

  p("To relate the data to a region of the US we request your ZIP code, which is not stored, but converted for storage to a US Census Tract number representing a whole block of ZIP codes."),
  textInput(inputId="zipCode", label="ZIP Code", value="01001", width = "100px"),
  br(),
  p(strong("Thank you for contributing to this project."))
  , style="background-color:Gold"),

  column(8,
    h2("Life Events Questions", style="text-align:center"),
    column(6,
        radioButtons(inputId="question1", label= "Death of Spouse", choices=c("No"=0, "Yes"=100), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question2", label="Divorce", choices=c("No"=0, "Yes"=73), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question3", label="Marital separation", choices=c("No"=0, "Yes"=65), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question4", label="Jail term", choices=c("No"=0, "Yes"=63), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question5", label="Death of close family member", choices=c("No"=0, "Yes"=63), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question6", label="Marriage", choices=c("No"=0, "Yes"=53), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question7", label="Fired at work", choices=c("No"=0, "Yes"=50), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question8", label="Marital reconciliation", choices=c("No"=0, "Yes"=47), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question9", label="Retirement", choices=c("No"=0, "Yes"=45), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question10", label="Change in health of family member", choices=c("No"=0, "Yes"=44), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question11", label="Pregnancy", choices=c("No"=0, "Yes"=40), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question12", label="Sex difficulties", choices=c("No"=0, "Yes"=39), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question13", label="Gain of new family member", choices=c("No"=0, "Yes"=39), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question14", label="Business readjustment", choices=c("No"=0, "Yes"=39), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question15", "Change in financial state", choices=c("No"=0, "Yes"=38), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question16", label="Death of close friend", choices=c("No"=0, "Yes=37"), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question17", label="Change to a different line of work", choices=c("No"=0, "Yes"=36), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question18", label="Change in number of arguments with spouse", choices=c("No"=0, "Yes"=35), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question19", label="Home Mortgage over $100,000", choices=c("No"=0, "Yes"=31), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question20", label="Foreclosure or mortgage or loan", choices=c("No"=0, "Yes"=30), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question21", label="Change in responsibilities at work", choices=c("No"=0, "Yes"=29), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question22", label="Son or daughter leaving home", choices=c("No"=0, "Yes"=29), selected = 0, inline = TRUE, width = NULL)
    ),

    column(6,

        radioButtons(inputId="question23", label="Trouble with in-laws", choices=c("No"=0, "Yes"=29), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question24", label="Outstanding personal achievement", choices=c("No"=0, "Yes"=28), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question25", label="Spouse begins or stops work", choices=c("No"=0, "Yes"=26), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question26", label="Begin or end school", choices=c("No"=0, "Yes"=26), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question27", label="Change in living conditions", choices=c("No"=0, "Yes"=25), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question28", label="Revision of personal habits", choices=c("No"=0, "Yes"=24), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question29", label="Trouble with boss", choices=c("No"=0, "Yes"=23), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question30", label="Change in work hours or conditions", choices=c("No"=0, "Yes"=20), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question31", label="Change in residence", choices=c("No"=0, "Yes"=20), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question32", label="Change in schools", choices=c("No"=0, "Yes"=20), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question33", label="Change in recreation", choices=c("No"=0, "Yes"=19), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question34", label="Change in church activities", choices=c("No"=0, "Yes"=19), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question35", label="Change in social activities", choices=c("No"=0, "Yes"=18), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question36", label="Mortgage or loan of less than $100,000", choices=c("No"=0, "Yes"=17), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question37", label="Change in sleeping habits", choices=c("No"=0, "Yes"=16), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question38", label="Change in number of family get-togethers", choices=c("No"=0, "Yes"=15), selected = 0, inline = TRUE, width = NULL),
        radioButtons(inputId="question39", label="Change in eating habits", choices=c("No"=0, "Yes"=15), selected = 0, inline = TRUE, width = NULL),
        sliderInput(inputId="question40", label="Single person living alone,  Estimate the stress involved for yourself", min=0, max=15, value=0, step = NULL, round = TRUE, ticks = TRUE, animate = TRUE, width = NULL, sep = ",", pre = NULL, post = NULL, timeFormat = NULL, timezone = NULL, dragRange = TRUE),
        sliderInput(inputId="question41", label="Other, describe briefly and estimate the stress involved for yourself", min=0, max=15, value=0, step = NULL, round = TRUE, ticks = TRUE, animate = TRUE, width = NULL, sep = ",", pre = NULL, post = NULL, timeFormat = NULL, timezone = NULL, dragRange = TRUE),
        textInput(inputId="text41", label="Name stressor (up to 15 characters)", value = "", width = NULL)
        ),
    br(),
    span(submitButton("Submit Survey"), style="text-align:center"),
    br()
    ,style="background-color:LemonChiffon"),

fluidRow(

  div(
    h2("Interpretation"),
    p("NOTE: Interpretation of the overall score is difficult because of the large differences in each person's ability to cope and their particular reactions to stress, but here are some general guidelines."),
    p("A total of 150 or less is good, suggesting a low level of stress in your life and a low probability of developing a stress-related disorder."),

    p("Your stress score is"),
    textOutput("resultText0"),
    br(),

    p("If your score is 300 or more, statistically you stand an almost 80% chance of getting sick in the near future.  "),
    p("If your score is 150 to 299, the chances are about 50%."),
    p("At less than 150, about 30%."),
    verbatimTextOutput("codedResponses"),
    verbatimTextOutput("studySumRec")
  ,style="padding:20px")
  , style="background-color:Gold")

))

