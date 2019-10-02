## ==========================
## Example 3.2-4 on Page 108
## --------------------------

# Note: R uses lambda (rate) and theta (scale) as well
#       alpha = shape
alpha=2
theta=2
x = 5

1 - pgamma(x, shape=alpha, scale=theta)
pgamma(x, shape=alpha, scale=theta, lower.tail=FALSE)

# Using ppois
ppois(alpha-1, lambda=x/theta)

# Using chisquare 
1 - pchisq(x, df=4) 

