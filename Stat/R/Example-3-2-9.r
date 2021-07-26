## ==========================
## Example 3.2-9 on Page 110
## --------------------------

# Using chi-square distribution
# Unit time: minute
1 - pchisq(9.390, df=18) 

# Note: we can also calcuate it using xgamma.
# Unit time: minute
1 - pgamma(9.390, shape=18/2, scale=2) 

#-----------------------------------------
# Using xgamma.
# Unit time: hour 
1 - pgamma(9.390/60, shape=18/2, scale=2/60) 
