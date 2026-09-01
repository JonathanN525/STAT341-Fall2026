# Name: Jonathan Noriega, Date: 09/01/2026, Purpose: Test Correlation Analysis

# Load Package ggpubr
library("ggpubr")
	Loading required package: ggplot2


# Load Dummy Dataset
my_data <- mtcars
my_data

# Alternate Hypothesis: The weight of the car is inveresely related to the miles per gallon it can travel
# Null Hypothesis: There is no difference/relation between the Weight of the care and the miles per gallon it can travel

# Create a scatter plat for dataset
ggscatter(my_data, x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef = TRUE ,cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight(1000 lbs)")

# Perform the Correlation Test
res <- cor.test(my_data$wt, my_data$mpg, method = "pearson")
res
 		Pearson's product-moment correlation
	
	data:  my_data$wt and my_data$mpg
	t = -9.559, df = 30, p-value = 1.294e-10
	alternative hypothesis: true correlation is not equal to 0
	95 percent confidence interval:
	 -0.9338264 -0.7440872
	sample estimates:
       cor 
	-0.8676594 


# Accept the Alternate Hypothesis
