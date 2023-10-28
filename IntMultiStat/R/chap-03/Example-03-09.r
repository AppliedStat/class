# Example 3.09 on Page 130

X = matrix( c(1,4,4, 2,1,0, 5,6,4), ncol=3)


xbar = apply(X,2, mean)

Xminus1xbarprime = X - c(1,1,1)%*%t(xbar)

n = nrow(X)

S = 1/(n-1) * t(Xminus1xbarprime) %*% Xminus1xbarprime 
S

# Or,  we can calcuate S using var() function. 
S = var(X)
S 

det(S)



