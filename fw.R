download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for","fw.csv", method="curl")
widths <- c(15, 4, 9, 4, 9, 4, 9, 4, 4)
df1 <- read.fwf("fw.csv", widths, header=FALSE, skip=4)
V4sum <- sum(df1$V4)
