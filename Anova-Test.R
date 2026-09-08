# Name: Jonathan Noriega, Date: 9/8/2026, Purpose: Anova Analysis

# Load package ggplot2
library(ggplot2)

# Load the Dataset
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv"

df <- read.csv(PATH)

# Alternate Hypothesis: There is a significant difference for survival with poison type 1 compared to poison types 2 and 3
# Null Hypothesis: There is no significant difference between poison type and poison types 2 and 3

# Plot the Dataset Using Library ggplot2
ggplot(df, aes(x = poison, y = time, fill = poison)) + geom_boxplot() + geom_jitter(shape = 15, color = "steelblue", position = position_jitter(0.21)) + theme_classic()