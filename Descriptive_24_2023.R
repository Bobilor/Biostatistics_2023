#Author: Blessing, Date: Jan 24,2023, Purpose: Functions for descriptive statistics
#Function for calculating mean
list <- c(1,2,3,4,5,2)
mean(list)

#Function to calculate standard deviation
sd(list)

#Function to calaculate median
median(list)

#Function to calculate mode
my_mode <- function(x) {                     # Create mode function 
  unique_x <- unique(x)
  tabulate_x <- tabulate(match(x, unique_x))
  unique_x[tabulate_x == max(tabulate_x)]
}

my_mode(list)

