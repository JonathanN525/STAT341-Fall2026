Author: Jonathan Noriega, Date: 11/05/2026, Purpose: Chi-Square Analysis Practice

# Read Sample Dataset
df<- read.csv("https://raw.githubusercontent.com/CSSEGISandData/COVID-19/refs/heads/master/csse_covid_19_data/csse_covid_19_daily_reports/01-22-2022.csv")

# Remove any NAs and Empty Cells
dfc <- df[!is.na(df$Province_State) & !is.na(df$Country_Region) & df$Province_State != "", ]

# Print Dataset in Table Form
table(df$Province_State, df$Country_Region)

# Apply the Chi-Square Function to Calculate the Differences between the 'Province_State' and 'Country_Region' groups
chisq.test(dfc$Province_State, dfc$Country_Region, correct=FALSE)

        Pearson's Chi-squared test

data:  dfc$Province_State and dfc$Country_Region
X-squared = 88728, df = 14328, p-value < 2.2e-16

Warning message:
In chisq.test(dfc$Province_State, dfc$Country_Region, correct = FALSE) :
  Chi-squared approximation may be incorrect
