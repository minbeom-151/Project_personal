install.packages("readr")
library(readr)
setwd( "c:/works")
rawData <- read_csv("금능농공단지.csv")
ku <- as.data.frame(rawData)
ku


# 업체별 분야 
circle2 <- table(ku$분야)
pie(circle2)