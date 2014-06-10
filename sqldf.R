library(sqldf)
library(utils)
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv","acs.csv", method="curl")
acs <- read.csv("acs.csv")
d1 <- sqldf("select pwgtp1 from acs where AGEP < 50")
d2 <- unique(acs$AGEP)
d3 <- sqldf("select distinct AGEP from acs")

