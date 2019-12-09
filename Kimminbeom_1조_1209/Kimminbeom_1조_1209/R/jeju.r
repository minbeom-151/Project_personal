install.packages("readr")
library(readr)
setwd( "c:/works")
rawData <- read_csv("jeju_indu.csv")
jeju<- as.data.frame(rawData)
jeju

library(ggplot2)

ggplot(jeju, aes(jeju$area, jeju$입주업체))+geom_bar(stat="identity")