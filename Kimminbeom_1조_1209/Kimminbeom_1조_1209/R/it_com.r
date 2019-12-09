install.packages("readr")
library(readr)
setwd( "c:/works")
rawData <- read_csv("it_com.csv")
ic <- as.data.frame(rawData)
ic

# 업체별 분야 
circle <- table(ic$분야)
pie(circle)





