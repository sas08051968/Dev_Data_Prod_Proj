#Course Project Developing Data Products

This peer assessed assignment has two parts. First, you will create a Shiny application and deploy it on Rstudio's servers. Second, you will use Slidify or Rstudio Presenter to prepare a reproducible pitch presentation about your application.

##I. Your Shiny Application
1.	Write a shiny application with associated supporting documentation. The documentation should be thought of as whatever a user will need to get started using your application.

2.	Deploy the application on Rstudio's shiny server

3.	Share the application link by pasting it into the text box provided

4.	Share server.R and ui.R code on github

The application must include the following:

1.	Some form of input (widget: textbox, radio button, checkbox, ...)

2.	Complete some operation(s) on the ui input in sever.R

3.	Display some reactive output as a result of server calculations

4.	Include enough documentation so that a novice user could use your application.

5.	The documentation should be at the Shiny website itself. Do not post to an external link.

The Shiny application in question is entirely open. However, if you're having trouble coming up with ideas, you could start from the simple prediction algorithm done in class and build a new algorithm on one of the R datasets packages. Please make the package simple for the end user, so that they don't need a lot of your prerequisite knowledge to evaluate your application. You should emphasize a simple project given the short time frame. 

###Evaluation of the work

Note: the evaluation is  completed during the evaluation phase.
Space is provided for constructive feedback to the student who submitted the work. 
Discuss the strengths of their application, and give them advice about how it could be improved in the future.  

i.	Sufficient documentation on the shiny site for a user to get started using the application.

ii.	Application runs as described in the documentation.

iii.	Some form of widget input (slider, textbox, radio buttons, checkbox, ...) used in either ui.R or a custom web page.

iv.	server.R performs some calculations on the input from ui.R.

v.	The server calculation result(s) is(are) displayed in the html page.

vi.	The app substantively different from the very simple applications built in the class.
(Note, it is OK, if the app is simple and based on the one presented in class, but not to be basically a carbon copy of the examples we covered. If the variable names weresimply changed then this would not be acceptible. However, a prediction algorithm that had a similar layout would be fine.

vii.	Give the app +1 for being well done, or neat, or even just a solid effort.

viii.	Grading decisions may require explanation, so include such explanations. 



##II. Your Reproducible Pitch Presentation

Having made the shiny app, now make a pitch for it. Use 5 slides (inclusive of the title slide) to pitch the app from I. Create a web page using Slidify or Rstudio Presenter with an html5 slide deck.

Here's what is needed

1.	Five slides to pitch the idea done in Slidify or Rstudio Presenter

2.	A presentation pushed to github or Rpubs

3.	A link to the github or Rpubs presentation pasted into the text box provide

A presentation must satisfy the following

1.	It must be done in Slidify or Rstudio Presenter

2.	It must be 5 pages

3.	It must be hosted on github or Rpubs

4.	It must contained some embedded R code that gets run when slidifying the document

**Note:**
- To publish the slidify presentation to github or Rpubs, there's the publish command. [This link](http://slidify.org/publish.html) outlines how to do it (it's one line)  
- Rstudio presenter has a button to publish directly to Rpubs https://support.rstudio.com/hc/en-us/articles/200714023-Displaying-and-Distributing-Presentations. 
- Using Rpubs, include the link to the presentation in the appropriate submission box as a http:// link (not a https:// link.)

You can also publish using both formats to github manually using gh-pages, though your github branch must have a .nojekyll file and be on a branch names gh-pages. More on gh-pages is here https://pages.github.com/  and there is a video lecture outlining how to do this.

###Evaluation of the work

Note: The evaluation is filled out during the evaluation phase.

i.	The presentation is completed in slidify or R Presente.

ii.	The presentation is 5 page.

iii.	It contains an R expression that is evaluated and displaye.

iv.	It is hosted on github or Rpub.

v.	The presentation is actually a presentation? (i.e. it is a legitimate pitch for the shiny application)

vi.	Give the presentation a +1 for being well done. Did they tinker around with the default style? Was the presentation particularly lucid and well organized? In other words, the student made a legitimate try.

vii.	There are no R errors displayed in the presentation.

viii.	Grading decisions may require explanation, so include such explanations.  

