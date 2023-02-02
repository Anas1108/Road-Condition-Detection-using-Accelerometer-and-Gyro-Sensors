
#Q3
data<-read.csv('TrainingData.csv',header = TRUE,sep = ',')
head(data)
data <- na.omit(data)
res_q3=aov(Speed~Road_Condition, data=data)
summary(res_q3)
# We will reject Null Hypothesis

#Ho: Mean same for all components
#Ha: At least one component has different mean
