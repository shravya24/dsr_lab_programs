getwd()
setwd("C:/Users/hp/Documents/dsr")
data1<-read.csv("iris.csv")
data1
summary(data1)

plot(data1$sepal.length,data1$sepal.width)