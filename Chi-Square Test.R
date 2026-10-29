Author: Jonathan Noriega, Date: 10/27/2026, Purpose: Chi-Square Analysis

# Read Sample Dataset
data_frame <- read.csv("https://goo.gl/j6lRXD")

# Print Dataset in Table Form
table(data_frame$treatment, data_frame$improvement)
              improved not-improved
  not-treated       26           29
  treated           35           15

# Apply the Chi-Square Function to Calculate the DIfferences between the 'treated' and 'not-treated' groups
chisq.test(data_frame$treatment, data_frame$improvement, correct=FALSE)
        Pearson's Chi-squared test

data:  data_frame$treatment and data_frame$improvement
X-squared = 5.5569, df = 1, p-value = 0.01841

