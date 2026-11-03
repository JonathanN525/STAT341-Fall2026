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

-----------------------------------------------------------------------------------------------------------------

# Using Dataset: "https://raw.githubusercontent.com/gramener/datasets/refs/heads/main/card_transactions.csv" use chi-square test to compare columns "Funding source" and "Decision" using chi-square test.

# Read Sample Dataset
data_set <- read.csv("https://raw.githubusercontent.com/gramener/datasets/refs/heads/main/card_transactions.csv")

# Print Dataset in Table Form
table(data_set$Funding.source, data_set$Decision)
          Approved Declined
  Credit      4364      460
  Debit       4275      484
  Prepaid      366       51

# Apply the Chi-Square Function to Calculate the DIfferences between the 'Funding.source' groups
chisq.test(data_set$Funding.source, data_set$Decision, correct=FALSE)
        Pearson's Chi-squared test

data:  data_set$Funding.source and data_set$Decision
X-squared = 3.6017, df = 2, p-value = 0.1652


