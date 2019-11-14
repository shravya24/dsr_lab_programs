
getwd()
setwd("C:/Users/hp/Documents/dsr")
data1<-read.csv("iris.csv")
fw<-data.frame(data1)

fw.lm=lm(sepal.length~sepal.width,data=fw)
summary(fw.lm)
names(fw.lm)                                    
fw.lm$coefficients 

newypred<-fitted(fw.lm)                   
newypred

confint(fw.lm)  
confint(fw.lm,parm=c('(Intercept)','SepalWidth'),level =0.9)

fitted(fw.lm)
residuals(fw.lm) 
plot(fw$SepalWidth,fw$SepalLength,col="red")
coef(fw.lm)

abline(coef(fw.lm),lty=1,col="blue")

plot(fw.lm,which=1)  

