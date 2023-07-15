# Example 5.2 on Page 214 

mu0 = c(4,50,10)

data = read.table("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/T5-1.DAT")

X = data.matrix( data )

xbar = colMeans(X)

S = cov(X)


n = nrow(X)
p = ncol(X)

T2 = n*t(xbar-mu0) %*% solve(S) %*% (xbar-mu0)

T2


Critical.value = (n-1)*p / (n-p) * qf(0.10, p, n-p, lower.tail=FALSE)
## or  (n-1)*p / (n-p) * qf(1-0.10, p, n-p)

Critical.value 


