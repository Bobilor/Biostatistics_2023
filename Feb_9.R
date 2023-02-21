#Author: Blessing Obilor, Date: 02/09/2023, Purpose: To perform ANOVA analysis


#Load the library
library(dplyr)


#Load the dataset
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv"

df<-read.csv(PATH)

# specifically choose columns 2 to 4
df<-df[,2:4]

#Run ANOVA functiom
anova_one_way <- aov(time~poison, data = df) 

anova_one_way

summary(anova_one_way)
# F value = 20.67, This is greater than 0.05, thus is significant
#P value 3.96e-05, this is is less than 0.05, thus, it is significant
