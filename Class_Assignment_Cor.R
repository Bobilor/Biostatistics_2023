#Author: Blessing obilor, Date: 02/07/2023, Purpose: Correlation class-Assignment

#Load Data set
Data <-read.csv("https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-states.csv") 

#Run the correlation test without plotting for Fips and Case
res <- cor.test(Data$fips, Data$cases, method = "pearson")
#Print Correlation test (res)
res
#Correlation Value = -0.1449438


#Run the correlation test without plotting for Fips and Death
res <- cor.test(Data$fips, Data$deaths, method = "pearson")
#Print Correlation test (res)
res
#Correlation Value = -0.1650371
