# Anas Zafar 19I-1676
df <- read.csv("TrainingData.csv",TRUE,",")
head(df)
# Ho = Time is correlated with road condition
# Ha = Time is not correlated with road condition

new_df=subset(df,select=c("Timer","Road_Condition"))
data$Timer<-as.numeric(ms(new_df$Timer))
time_stamp= aov(Road_Condition~Timer,data=data)
summary(time_stamp)

#Conclusion
#As p-value is less than 0.05 so we reject null hypothesis 