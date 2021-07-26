## ==========================
## Example 3.2-6 on Page 109
## --------------------------

# Using chi-square distribution
pchisq(12.83, df=5) - pchisq(1.145, df=5)

# Note: we can also calcuate it using xgamma.
pgamma(12.83, shape=5/2, scale=2) - pgamma(1.145, shape=5/2, scale=2)

