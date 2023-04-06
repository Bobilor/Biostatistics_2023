#Author: Blessing Obilor, Date: 4/06/23, Purpose: Chi-square analysis

# Read the CVS file
data_frame <- read.csv("https://goo.gl/j6lRXD")

#Check the columns
table(data_frame$treatment, data_frame$improvement)


#Running the chi-square test
             
chisq.test(data_frame$treatment, data_frame$improvement, correct=FALSE)



# Pearson's Chi-squared test

data:  data_frame$treatment and data_frame$improvement
X-squared = 5.5569, df = 1, p-value = 0.01841