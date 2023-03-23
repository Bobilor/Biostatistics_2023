#Author: Blessing Obilor: Date 3/23/23, Purpose: Calaculate T-test

# Create 2 variables x and y
x = rnorm(10)
y = rnorm(10)

#Plot x and y values
#Creates sequence of points from-4.5 to 4.5
pts = seq(-4.5,4.5,length=100)

#Plotting using function plot
plot(pts,dt(pts,df=9),col='red',type='l')


#Overlaying x and y variables on this plot
lines(density(x), col='green')
lines(density(y), col='blue')

# Ttest Function
ttest = t.test(x,y)

#Output

Welch Two Sample t-test

data:  x and y
t = 0.90495, df = 13.616, p-value = 0.3812
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.6027632  1.4786471
sample estimates:
 mean of x  mean of y 
 0.1867967 -0.2511453 