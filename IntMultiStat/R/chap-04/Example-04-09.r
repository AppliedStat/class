# Example 4.9 on Page 179


x = c(-1.00, -0.10, 0.16, 0.41, 0.62, 0.80, 1.26, 1.54, 1.71, 2.30)

x = sort(x)

# (i-0.5)/n  (for large n) or (i-0.375)/(n+0.25) (small n)

n = length(x)

Fhat = (1:n - 0.5)/n    ## or use ppoints(n) 

q = qnorm( Fhat )

plot( q, x)



#-------------------
# R has a function for this

qqnorm (x)

qqline(x) # cosmetic 




