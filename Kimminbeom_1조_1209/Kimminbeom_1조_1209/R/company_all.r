setwd( "c:/works")
ca <- read.csv( "company_all.csv", header = T )
ca

library('ggplot2')


# 업종별 사업체수 및 종사자수 
ggplot(data=ca, aes(x=reorder(ca$X, ca$사업체수), y=사업체수)) + geom_bar(stat='identity')
ggplot(data=ca, aes(x=reorder(ca$X, ca$종사자수), y=종사자수)) + geom_bar(stat='identity')

# 업종별 사업체수 및 종사자수 비교
ggplot(ca, aes(ca$X, ca$사업체수, fill=ca$종사자수))+geom_bar(stat='identity')


# 사업체수와 종사자수 산점도 그리고 회기선 그리기.
plot( ca$사업체수~ca$종사자수, data = ca )
res <- lm( ca$사업체수~ca$종사자수, data = ca  )          
res                                         
abline( res ) 


# 상관계수 구하기( 결과 : 0.9176828 )

#names <- c(ca$X)
#names
cor(ca$사업체수,  ca$종사자수)

# 업종별 본사수 및  지사 수  

ggplot(ca, aes(ca$X, ca$본사))+geom_bar(stat="identity")
ggplot(ca, aes(ca$X, ca$지사))+geom_bar(stat="identity")

# 이상치 제거 전 본사와 지사 관계

ggplot(ca, aes(ca$X, ca$본사, fill=ca$지사))+geom_bar(stat='identity') 

# 이상치 확인 및 제거 

table(ca$본사)
summary(ca$본사) 
boxplot(ca$본사)
ca$본사 <- ifelse(ca$본사 ==73 | ca$본사 == 98, NA, ca$본사)
boxplot(ca$본사)

table(ca$지사)
summary(ca$지사) 
boxplot(ca$지사)
ca$지사 <- ifelse(ca$지사 == 219 | ca$지사 == 256 |ca$지사 ==267|ca$지사 ==460|ca$지사 ==680, NA, ca$지사)
boxplot(ca$지사)

# 결측치 최빈값으로  대체 ( 지사는 최소값이 219로 이상하게 나와서 평균으로 대체 )

min(ca$본사, na.rm = T)
ca$본사 <- ifelse(is.na(ca$본사), 1, ca$본사)  
table(is.na(ca$본사)) 
ca$본사

min(ca$지사, na.rm = T)
ca$지사 <- ifelse(is.na(ca$지사), 0, ca$지사)  
table(is.na(ca$본사)) 
ca$본사

# 이상치 제거 후 비교 

ggplot(ca, aes(ca$X, ca$본사, fill=ca$지사))+geom_bar(stat='identity') 