
# symmetric?

A = matrix( c(3,5,5,-2), nrow=2)

B = matrix( c(3,4,6,-2), nrow=2)


A - t(A)

B - t(B)


# Division operation for matrices ??? (R does this element-wise).

1/A

1/B

A/B

B/A


# Of course 1/A is not an inverse of A
# check

1/A %*% A

# diagonal matrix 

D = diag( c(1,2,3,4,5) )

d1 = diag(D) 

D2 = diag( 1/d1 )

D * D2   # This works only for this special case. 

D %*% D2



# Note diag (3)  

# Note A %*% B and B %*% A




