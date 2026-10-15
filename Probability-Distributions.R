# Author: Jonathan Noriega, Date: 10/15/2026, Purpose: Calculate Probability Distributions

# Funtion for Binomial Distribution
dbinom(4, size = 12, prob = 0.2)'
[1] 0.1328756

# Funtion for Poisson Distribution
ppois(16, lambda = 12)
[1] 0.898709

# Uniform Distribution
runif(10, min = 1, max = 3)
[1] 1.910907 1.142332 1.834742 1.489864 1.527901 1.835908 2.664078 1.426741
[9] 2.458305 2.185868

# Chi-Squared Distribution
qchisq(.95, df = 7)
[1] 14.06714

# Student t Distribution
qt(c(.025, .975), df = 5)
[1] -2.570582  2.570582

# F Distribution
qf(.95, df1 = 5, df2 = 2)
[1] 19.29641

# Exponential Distribution
pexp(2, rate = 1/3)
[1] 0.4865829

# Normal Distribution
pnorm(84, mean = 72, sd = 15.2, lower.tail = FALSE)
[1] 0.2149176