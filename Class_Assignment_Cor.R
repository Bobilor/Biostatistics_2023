#Author: Blessing obilor, Date: 02/07/2023, Purpose: Correlation class-Assignment

#Load Data set
Data <-read.csv("https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-states.csv") 

#Load library
library("ggpubr")

# Just print the correlation value without plotting for Fips and Case
res <- cor.test(Data$fip, Data$case, method = "pearson")
#Correlation Coefficien = -0.1449438


 Just print the correlation value without plotting for Fips and Death
res <- cor.test(Data$fip, Data$death, method = "pearson")
#Correlation Coefficien = -0.1650371