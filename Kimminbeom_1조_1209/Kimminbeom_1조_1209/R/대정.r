install.packages("readr")
library(readr)
setwd( "c:/works")
rawData <- read_csv("대정농공단지.csv")
dea <- as.data.frame(rawData)
dea


# 업체별 분야 
circle3 <- table(dea$분야)
pie(circle3)