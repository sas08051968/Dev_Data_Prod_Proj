## Dummy Survey Data Creation Maintenance

illnessSurvey <- as.data.frame(matrix(data=c("fld1","Fld2","fld3", "fld4","fld5","fld6"),nrow=1, byrow=TRUE))
colnames(illnessSurvey) <- c("refNo","collectDate", "subjEmail","threeZip","ageRange","score")

# change all to character
for (i in seq(1:6) ) {
  illnessSurvey[,i] <- as.character(illnessSurvey[,i])
}
# make first line proper format dummy data
illnessSurvey[1,] <- list("1000000","2016-01-31","dummy0@gmail.com","502","65","150")
# change collectDate tp data class
illnessSurvey$collectDate <-as.Date(illnessSurvey$collectDate)
# change score to integer
illnessSurvey$score <-as.integer(illnessSurvey$score)
# add data with age range
illnessSurvey[2,] <- list("1000001","2016-01-31","dummy1@gmail.com","020","17",100)
illnessSurvey[3,] <- list("1000002","2016-01-31","dummy2@gmail.com","041","20",100)
illnessSurvey[4,] <- list("1000003","2016-01-31","dummy3@gmail.com","088","30",300)
illnessSurvey[5,] <- list("1000004","2016-01-31","dummy4@gmail.com","123","40",60)
illnessSurvey[6,] <- list("1000005","2016-01-31","dummy5@gmail.com","453","50",250)
illnessSurvey[7,] <- list("1000006","2016-01-31","dummy6@gmail.com","826","60",100)
illnessSurvey[8,] <- list("1000007","2016-01-31","dummy7@gmail.com","980","65",200)
illnessSurvey[9,] <- list("1000008","2016-01-31","dummy8@gmail.com","710","65",200)

#factorize ageRange with proper levels
illnessSurvey$ageRange <- as.factor(illnessSurvey$ageRange)

