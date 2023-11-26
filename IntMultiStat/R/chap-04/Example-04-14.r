# Example 4.14 on Page 186 

data = read.table("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/T4-3.DAT")

x1 = data[[1]] 
x2 = data[[2]] 
x3 = data[[3]] 
x4 = data[[4]] 

X = cbind(x1,x2, x3, x4)

df = 4 

S = cov(X)

Sinv = solve(S)

xbar = colMeans(X)

n= length(x1)

d2 = numeric(n)

# Let's find d^2 
for ( j in 1:n  ) {
    d2[j] = t( X[j,]-xbar) %*% Sinv %*% (X[j,]-xbar)
}
# If we use mahalanobis() function, it is very convenient. 
mahalanobis(X, center=xbar, cov=S)


# q-q values   
d2 = sort(d2)

q = qchisq( ppoints(n), df=df )

cbind(d2,q) 

# q-q plot 
plot(q, d2)

# Scatter matrix plot
pairs(X)


