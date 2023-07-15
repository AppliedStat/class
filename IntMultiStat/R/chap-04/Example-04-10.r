# Example 4.10 on Page 179

data = read.table("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/T4-1.DAT")
x = as.vector(data[[1]])  ## N.B.: data is list structure. 
x = sort(x)
## Note: The above two lines are different from Example 4.9

# (i-0.5)/n  (for large n) or (i-0.375)/(n+0.25) (small n)

n = length(x)

Fhat = (1:n - 0.5)/n    ## or use ppoints(n) 

q = qnorm( Fhat )

plot( q, x)



#-------------------
# R has a function for this

qqnorm (x)

qqline(x) # cosmetic 




