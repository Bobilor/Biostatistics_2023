# Author: Blessing Obilor, Date: 01/31/2023, Purpose: Assignment one

#Load Library
library("ggpubr")

#Load sample dataset
my_data <- mtcars 

#plot the correlation value
ggscatter(my_data, x = "mpg", y = "disp", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Engine Displacement (cubic inches)")

# Just print the correlation value without plotting
res <- cor.test(my_data$disp, my_data$mpg, method = "pearson")



