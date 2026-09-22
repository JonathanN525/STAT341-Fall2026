# Author: Jonathan Noriega, Date: 09/22/2026, Purpose: To perform T-Test

# Create Variables X and Y With Some Dummy Dataset
x = rnrom(10)
y = rnorm(10)

# Make a Normal Distribution Plot/Curve for Reference
pts = seq(-4.5, 4.5, length = 100)
plot(pts, dt(pts, df = 9), col = 'red' , type = 'l')

#Add x and y Points on Existing Plot Window
lines(density(x), col = 'green')
lines(density(y), col = 'blue')

# Add Another Curve, Color Yellow with 100 Points Between 2 to 4
z = pmin(pmax(rnorm(100, 2:4) , 2), 4)  /  pts = seq(2 , 4) , length = 100)
lines(density(z), col = 'yellow')

#Apply the T-Test Function to Tesm t Between the Variables x and y
ttest = t.test(x , y)

        Welch Two Sample t-test

data:  x and y
t = -1.5319, df = 17.709, p-value = 0.1432
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -1.2014318  0.1888883
sample estimates:
 mean of x  mean of y 
-0.3648828  0.1413890 

# Conclusion: xand y are not Significantly Different Variables/Groups