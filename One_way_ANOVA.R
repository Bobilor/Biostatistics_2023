#Author: Blessing Obilor, Date: 02/06/2023, Purpose: One-way ANOVA

#Load library 
library("dplyr")

#Load data set
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv"

#Read Data Frame, Removing unnecessary variable and Converting the variable poison as ordered level
df <- read.csv(PATH) %>% select(-X) %>% mutate(poison = factor(poison, ordered = TRUE))

# View Data frame(Transpose form)
glimpse(df)

#Check the format of the variable poison
levels(df$poison)

#Compute the mean and standard deviation.
df %>% 
group_by(poison) %>% 
summarise( 
count_poison = n(), 
mean_time = mean(time, na.rm = TRUE),
sd_time = sd(time, na.rm = TRUE)
)

#Plot a box plot
#Load package (ggplot2)
ggplot(df, aes(x = poison, y = time, fill = poison)) + geom_boxplot() + geom_jitter(shape = 15, color = "steelblue", position = position_jitter(0.21)) + theme_classic()

#Compute the one-way ANOVA test
anova_one_way <- aov(time~poison, data = df) 
summary(anova_one_way)





