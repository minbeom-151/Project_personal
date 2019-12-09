
setwd( "c:/works")
cn <- read.csv( "company_num.csv", header = T )
cn

install.packages('ggplot2')
library('ggplot2')

str(cn)

# 종업원수에 따른 연도별 기업수증감

ggplot(cn, aes(x=year, y=X1명)) + geom_line()
ggplot(cn, aes(x=year, y=X4명)) + geom_line()
ggplot(cn, aes(x=year, y=X9명)) + geom_line()
ggplot(cn, aes(x=year, y=X19명)) + geom_line()
ggplot(cn, aes(x=year, y=X49명)) + geom_line()
ggplot(cn, aes(x=year, y=X99명)) + geom_line()
ggplot(cn, aes(x=year, y=X299명)) + geom_line()
ggplot(cn, aes(x=year, y=X499명)) + geom_line()
ggplot(cn, aes(x=year, y=X999명)) + geom_line()
