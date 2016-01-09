#Import a SAS transport format file to R
# xpt file already down loaded from CDC,
##      http://www.cdc.gov/brfss/data_documentation/index.htm
## see  Behavioral Risk Factor Surveillance System, SAS: LLCP2014.XPT
## site includes Codebook, User Manuals and Survey Details by Year

# in R (inworking directory where SAS file downloaded)
  library(Hmisc)
  mydata <- sasxport.get("LLCP2014.XPT")
  # Note: character variables are converted to R factors

# or . . .

  # Assign the column names manually
  read.fwf("myfile.txt",
           c(7,5,-2,1,1,1,1,1,1), # Width of the columns. -2 means drop those columns
           skip=1,                # Skip the first line (contains header here)
           col.names=c("subject","sex","s1","s2","s3","s4","s5","s6"),
           strip.white=TRUE)      # Strip out leading and trailing whitespace when reading each

