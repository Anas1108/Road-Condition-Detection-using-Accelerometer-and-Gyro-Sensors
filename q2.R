#Q2
data<-read.csv('TrainingData.csv',header = TRUE,sep = ',')
head(data)
data2 = data[sample(1:nrow(data),size=150000),]
## Anova test for each accelerometer. 
x=aov(Road_Condition~Acceleromete_X,data=data2)
summary(x)

y=aov(Road_Condition~Acceleromete_Y,data=data2)
summary(y)
z=aov(Road_Condition~Acceleromete_Z,data=data2)
summary(z)

# We will failed to reject Null hypothesis So Acceleromete_Z better explains the road condition