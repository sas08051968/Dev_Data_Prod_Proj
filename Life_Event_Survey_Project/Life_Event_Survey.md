The Life Event Survey Tool
========================================================
author:David A York
date: January 31, 2016




The Investment
========================================================

The Project intends to provide both a client friendly data collection platform and a tool for database maintenance, manipulation and analysis.

- The Client-user facing part is a clear and simple survey taker and feedback application
- The How-tos for both client-user and investigator-user are concise and complete and integrated smoothly with the tool
- The complete tool collects, provides client feed back and outcome follow-up. As well the collected data are stored in simple comma-separated format which can be sent to the investigator site for study.
- simple view and analysis of the insitu data is provided by the tool and it's integrity can be assured.


The Tool
========================================================

- a free open source solution
- The tool is a complete data input, storage, analysis and maintenance application.
- The tool is secure when deployed,
  - zipcodes are converted immediately to census tract codes before storing
  - potential identifying data are encrypted
  - data can only be sent to a preselected addresses

**Database Excerpt**

|Date       |email                                  |Tract |Age Group | Score|Risk |
|:----------|:--------------------------------------|:-----|:---------|-----:|:----|
|10/17/2016 |libero.et.tristique@quisdiamluctus.net |40146 |30        |   502|high |
|2/12/2015  |dui.nec@augue.org                      |17223 |17        |   856|high |
|6/20/2016  |molestie@molestietellusAenean.com      |49443 |60        |   173|high |
|11/13/2015 |lectus@pharetrautpharetra.edu          |39935 |17        |   665|high |


Simple Reports - Tables
=========================================================
<br><br>
**Summary**
<br>

|   |ageRange |    score      |
|:--|:--------|:--------------|
|   |17:129   |Min.   :   0.0 |
|   |20:120   |1st Qu.: 271.0 |
|   |30:101   |Median : 614.0 |
|   |40:118   |Mean   : 645.7 |
|   |50:102   |3rd Qu.:1015.2 |
|   |60:121   |Max.   :1412.0 |
|   |65:109   |NA             |

Simple Reports - Plots
========================================================
<br>
<center>
Plot Age Group versus Score

```r
plot(aggData)
```

![plot of chunk unnamed-chunk-4](Life_Event_Survey-figure/unnamed-chunk-4-1.png) 
<br>


Simple Reports - Plots
========================================================

![plot of chunk unnamed-chunk-5](Life_Event_Survey-figure/unnamed-chunk-5-1.png) 


The Payoff
========================================================

- simple, free, open-source solution to hosting the survey
- Client-users have an easy survey to complete with immediate risk feedback as reward
- Survey collected unattended, 24x7
- Secure and confidential
- The application communicates, on demand, with the investigator, off site, to allow more complex analysis, presentation and ultimate publication.
