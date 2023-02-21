#Author: Blessing Obilor, Date: 02/21/2023, Purpose: To perform Two way ANOVA


#Load the library
library(dplyr)


#Load the dataset
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv"

df<-read.csv(PATH)


#Run Two-way ANOVA function
anova_two_way<-aov(time~poison+treat, data= df)
summary(anova_two_way)

#poison 
#F value = 34.77, This is greater than 0.05, thus is significant
#P value = 5.17e-05, this is is less than 0.05, thus, it is significant

#Treat 
#F value = 11.46, This is greater than 0.05, thus is significant
#P value = 1.19e-05, this is is less than 0.05, thus, it is significant

#Post Hoc Test
TukeyHSD(anova_two_way)
