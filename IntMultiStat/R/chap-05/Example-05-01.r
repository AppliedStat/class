# Example 5.1 on Page 213 (Easy!!)

mu0 = c(9,5)

X = matrix(c(6,10,8, 9,6,3), nrow=3)

xbar = colMeans(X)

S = cov(X)

n = nrow(X)


T2 = n*t(xbar-mu0) %*% solve(S) %*% (xbar-mu0)

T2



