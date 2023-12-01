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



# Correlations
lambda1 = tmp$values[1]
lambda2 = tmp$values[2]
lambda3 = tmp$values[3]

CorrY1.X1 = e1[1] * sqrt(lambda1) / sqrt( Sigma[1,1] )   # NB: +/- sign
CorrY1.X1

CorrY1.X2 = e1[2] * sqrt(lambda1) / sqrt( Sigma[2,2] )   # NB: +/- sign
CorrY1.X2

CorrY2.X1 = e2[1] * sqrt(lambda2) / sqrt( Sigma[1,1] ) 
CorrY2.X1

CorrY2.X2 = e2[2] * sqrt(lambda2) / sqrt( Sigma[2,2] ) 
CorrY2.X2

CorrY2.X3 = e2[3] * sqrt(lambda2) / sqrt( Sigma[3,3] ) 
CorrY2.X3



