# Example 3.10 on Page 131

X = matrix( c(1,4,2,5,3, 9,12,10,8,11, 10,16,12,13,14), ncol=3)


# Cov
S = cov(X)


# Cov using demeaned X
mu.hat = colMeans(X)

n = nrow(X)
rep(1,n) %*% t(mu.hat)

X.demeaned = X - rep(1,5) %*% t(mu.hat)

t(X.demeaned) %*% X.demeaned / (n-1)

# Checking det(S)

det(S)


# Do some experiment.

W = X[,-3]   # remove the 3rd column

x1 = X[,1]
x2 = X[,2]


a = runif(2)
a

x3 =  a[1]*x1 + a[2]*x2

X1 = cbind(W,x3)

X

X1

det( cov(X1) )


# Repeat the above with inter coef. to avoid truncation errors. 

for ( i in 1:5 ) { 
  # a =  round( 10*runif(2), 0)   # interger coef. 
  a =  runif(2) 
  cat("a=", a, "\n")
  x3 =  a[1]*x1 + a[2]*x2

  X1 = cbind(W,x3)
  
  cat( "|S| =",  det( cov(X1) ), "\n\n" )
}


# It is related to rank of a matrix
dim(X) 

qr(X)$rank   # NB.: rank(..) returns the sample ranks of the values
             # Be careful about truncation error when qr()$rank is used. 


