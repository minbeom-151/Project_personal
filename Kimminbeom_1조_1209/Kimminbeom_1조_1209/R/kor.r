install.packages("readr")
library(readr)
setwd( "c:/works")
rawData <- read_csv("kor_indus.csv")
kor<- as.data.frame(rawData)
kor

library(ggplot2)

ggplot(kor, aes(kor$area, kor$단지수))+geom_bar(stat="identity")
ggplot(kor, aes(kor$area, kor$입주업체))+geom_bar(stat="identity")
ggplot(kor, aes(kor$area, kor$누계수출))+geom_bar(stat="identity")

