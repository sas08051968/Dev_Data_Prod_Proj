#Import a SAS transport format file to R
# xpt file already down loaded from CDC,
##      http://www.cdc.gov/brfss/data_documentation/index.htm
## see  Behavioral Risk Factor Surveillance System, SAS: LLCP2014.XPT
## site includes Codebook, User Manuals and Survey Details by Year

# in R (inworking directory where SAS file downloaded)
  library(Hmisc)
  mydata <- sasxport.get("C:/Users/david/Documents/GitHub/Dev_Data_Prod_Proj/Data(Do_Not_Push)/LLCP2014.XPT")
  # Note: character variables are converted to R factors

# or . . .
  cdc2014 <-read.csv("CDC2014.txt",header=FALSE,sep=",")

# or . . .

  # Assign the column names manually
  setwd("C:/Users/david/Documents/GitHub/Dev_Data_Prod_Proj/Data(Do_Not_Push)")
  varLengths <- read.csv("Variable_Lengths.csv", header=FALSE)
  vectVarLengths <- as.vector(varLengths[,1])
  cdc2014 <-read.fwf("CDC2014.txt",
           vectVarLengths, # Width of the columns. -2 means drop those columns
           skip=1,                # Skip the first line (contains header here)
           header=FALSE,           # no colnames in header
           strip.white=TRUE)      # Strip out leading and trailing whitespace when reading each
  setwd("C:/Users/david/Documents/GitHub/Dev_Data_Prod_Proj/")
