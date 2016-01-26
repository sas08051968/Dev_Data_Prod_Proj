#Life Stress and Subsequent Illness Prediction
  
##Purpose
  
This Project is to be submitted in partial fulfilment of course requirements "Development of Data Products" part of The Johns Hopkins/Coursera, Certification in Data Science.
The topic of the project is the collection and real-time analysis (client feedback) of a Survey of Life Stress incidents with a view to prediction of risk of subsequent development of illness in the following 2 year period.
  
**Note:** This project is formed of Two Parts. Part 1 is the material to be submkitted as the Developing Data Products Course (DDP) project and Part 2 is the extension of the project started from the DDP Project requirements to build an active web application capable of handling all aspects of data collection and monitoring (exploratory analysis).
  
##Introduction and Background  
  
This is a subject which has occupied many researchers since the sixties. The effectiveness in prediction has been highly variable with the model of the Social [Readjustment Rating Scale](https://github.com/medmatix/Dev_Data_Prod_Proj/blob/master/Data%28Do_Not_Push%29/Social%20Readjustment%20Scale%20Holmes%20and%20Rahe.pdf) of Holmes and Rahe (1967) per [Spurgeon etal.(2000)](https://github.com/medmatix/Dev_Data_Prod_Proj/blob/master/Data%28Do_Not_Push%29/Life%20Events%20Inventory%2C%20Occup%20Med%20%28Lond%29-2001-Spurgeon-287-93.pdf) which we are applying as the instrument for this survey.

The Web Application is composed of (up to now) 5 phases:

-  Phase 1: **(DDP Project Submission)** Survey Data Collection and Storage for later analysis **completed--

  - Survey data is collected and score reported to Respondant-User
  - Survey responses are stored offsite (dropbox share) for analyst collation and tidying.

  - Any Displays (Tables and Figures) are mainly based on sample _(not live)_ data in reports.

- Phase 2: Respondant-User Instructions - **complete _(As required for DDP project submission)_.**

  - Investigator-User Instructions and Sample report - **Incomplete** _(not part of DDP project submission)_

- Phase 3: **(Non-DDP project )** Security submodules - **Incomplete** _(not part of DDP project submission)_

- Phase 4: **(Partly DDP project Submission)** Dummy Exploratory Data display "Reports" during survey process.

- Phase 5: **(Non-DDP project)** Email follow-up of Health Outcomes Module (post 2 years) - **Incomplete** _(not part of DDP Project}_

##Methods
  
There are 4 components to the implementation of Web Data Survey Application Project:

- Survey data input

- survey response handinging with responder feedback

- storage and/or forwartding of response record for off site collation and tidying

- documentation

  - study and survey instrument background
  
  - user-responder documentation
  
  - investigation-user documentation (operation and maintenance)
  
  In addition there are support functions inherent in the Web Application itself which are technically extraneous to the basic (initial) Data Product Development assignment requirements.

- Investigator review of data being collected

- Preliminary exploratory analysis, Tables and Plots etc.


##Results

1  The application project has the result of a completed instrument to collect and manage survey data. As far as the completed DDP Project, the deliverable is an live working data collection and rudementary monitoring application

2 The Overall project deliverable, including Part 1, above is a secure data collection, monitoring, forwarding, and storage/tidying process facilitated by the web application.
  
##Analysis of Data
Data sent to a dropbox is merged as individual records into two comma separated datafiles suitable for import into R.
Survey results are combined with follow-up health outcomes data (automatic email follow-up.
Analyses are then carried out on the combined data in R.

##Ongoing Conclusions
Data are monitored and cleaned and analyzed in stages.

###Short-term

- Geographic trends and age related trends in stress events are analyzed from the initial survey data.

###Long term

- Validation or the suvey instrument against the 2 year illness oucomes (email survey 

- Age related and geogrphic trends of illness development in relation to stress is studied.
