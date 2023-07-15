# Example 9.7 on Page 503 

data = read.table("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/T8-4.DAT")

X = data.matrix(data)
n = nrow(X)
p=ncol(X) 

m=2 

OUT = factanal(X, factors=m, rotation="none")

OUT

loadings(OUT)    # or OUT$loadings

L = OUT$loadings[,1:m]

# specific variances
hh = diag( L %*% t(L) )
Psi =  diag(1 - hh)

R =  cor(X)

df = 1/2* ( (p-m)^2-p-m) 

#  Bartlett-corrected test statistics using Eq. (9-39) 

test.stat = (n-1-(2*p+4*m+5)/6) * log (  det(L %*% t(L) + Psi)/det(R) ) 
test.stat 

# critical value 
alpha = 0.05 
qchisq(1-alpha, df=df)

# p-value 

1 - pchisq( test.stat, df=df)

# Compare the above with OUT 

OUT 

