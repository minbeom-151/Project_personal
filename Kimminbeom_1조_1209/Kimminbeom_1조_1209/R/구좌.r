install.packages("readr")
library(readr)
setwd( "c:/works")
rawData <- read_csv("구좌농공단지.csv")
kum <- as.data.frame(rawData)
kum


# 업체별 분야 
circle1 <- table(kum$분야)
pie(circle1)