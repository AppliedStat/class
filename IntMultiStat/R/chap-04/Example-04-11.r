# Example 4.11 on Page 182


x = c(-1.00, -0.10, 0.16, 0.41, 0.62, 0.80, 1.26, 1.54, 1.71, 2.30)

x = sort(x)

# (i-0.5)/n  (for large n) or (i-0.375)/(n+0.25) (small n)

n = length(x)

Fhat = (1:n - 0.5)/n    ## or use ppoints(n) 

q = qnorm( Fhat )



r1 = cor(x, q)

r2 = cor(x, ppoints(x))

c(r1,r2)  ## a little bit different 


