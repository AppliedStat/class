# Example 4.13 on Page 184 

data = read.table("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/P1-4.DAT")

x1 = data[[1]] 
x2 = data[[2]] 
df  = 2 

X = cbind(x1,x2)


S = cov(X)

Sinv = solve(S)

xbar = colMeans(X)

n= length(x1)

d2 = numeric(n)

# Let's find d^2 
for ( j in 1:n  ) {
    d2[j] = t( X[j,]-xbar) %*% Sinv %*% (X[j,]-xbar)
}

# q-q values   
d2 = sort(d2)

q = qchisq( ppoints(n), df=df )

cbind(d2,q) # This result may be different from Table of the textbook on Page 184


# Let's use (1:n-0.5)/n as the textbook did 

q1 = qchisq( (1:n-0.5)/n, df=df )

cbind(d2,q1)

# q-q plot 
plot(q, d2)


