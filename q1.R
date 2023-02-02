
#Q1
data<-read.csv('TrainingData.csv',header = TRUE,sep = ',')
head(data)
res<-manova(cbind(Acceleromete_X,Acceleromete_Y,Acceleromete_Z,Gyroscope_X,Gyroscope_Y,Gyroscope_Z)~Road_Condition,data=data)
summary(res)
summary.aov(res)
# We failed to reject Null hypothesis

# Ho: For each response variable, the means of all groups are equal
# Ha: For at least one response variable, the means of all groups are equal