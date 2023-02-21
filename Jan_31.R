# Author: Blessing Obilor, Date: 01/31/23, Purpose: Correlation analysis
# install external library
if(!require(devtools)) install.packages("devtools") devtools::install_github("kassambara/ggpubr")

# Load the library
library("ggpubr")

# Load sample dataset
my_data <- mtcars 

#plot the correlation value
ggscatter(my_data, x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)")

# Just print the correlation value without plotting
res <- cor.test(my_data$wt, my_data$mpg, method = "pearson")

# Correlation value = -0.87
