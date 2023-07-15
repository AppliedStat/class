# Example 8.1 on Page 434 

Sigma = matrix( c(1, -2, 0,   -2, 5, 0,   0, 0, 2), nrow=3)

tmp = eigen(Sigma)

e1 = tmp$vectors[,1]
e2 = tmp$vectors[,2]
e3 = tmp$vectors[,3]

e1
e2
e3


A = t(tmp$vectors)


Sigma.Y =  A %*% Sigma %*% t(A)

Sigma.Y

# compare the diagonal of Sigma.Y and eigen values 
round( Sigma.Y, 5)

tmp$values

sum( diag(Sigma) )
sum( diag(Sigma.Y) )
sum( tmp$values )




