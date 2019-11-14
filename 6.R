library(cluster)
library(ggplot2)

x<-c(185,170,168,179,182,188)
y<-c(72,56,60,68,72,77)
getwd()
data1<-read.csv("C:/Users/user/Documents/iris.csv")
data1
clsample<-data.frame(x,y)
clsample
dim(clsample)
clsample1<-data.matrix(clsample)
clsample1
cldata<-clsample1[,1:2]
cldata

wss<-vector(mode="numeric",length=6)
wss


km=kmeans(cldata,2,nstart=10)
km
km$cluster
km$centers
km$withinss
km$betweenss
km$totss



plot(cldata[km$cluster ==1,],col="red",xlim=c(min(cldata[,1]),max(cldata[,1])),ylim=c(min(cldata[,2]),max(cldata[,2])))
points(cldata[km$cluster == 2,],col="blue")

