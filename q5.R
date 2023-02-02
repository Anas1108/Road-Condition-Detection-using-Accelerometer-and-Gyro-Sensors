#Q5
data<-read.csv('TrainingData.csv',header = TRUE,sep = ',')
head(data)
filter_df = data[sample(1:nrow(data), size = 150000),]

# 5 Best
anova <- aov(Rotational_5 ~ Road_Condition, data = filter_df)
summary(anova)
anova <- aov(Rotational_1 ~ Road_Condition, data = filter_df)
summary(anova)
anova <- aov(Magnetic_Y ~ Road_Condition, data = filter_df)
summary(anova)
anova <- aov(Rotational_3 ~ Road_Condition, data = filter_df)
summary(anova)
anova <- aov(Orientation_Z ~ Road_Condition, data = filter_df)
summary(anova)