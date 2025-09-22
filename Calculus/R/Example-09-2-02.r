# Page 349 

A = matrix(c( 1,2,3,  0,1,2,  4,-2,7), nrow=3, byrow=TRUE)
B=  matrix(c(-4,3,5, -2,-2,0, 3,2,-1), nrow=3, byrow=TRUE)

# (a) scalar multiplication and subtraction 
2*A - 3*B

# (b) matrix multiplication 
A %*% B 

# (c) matrix multiplication 
B %*% A 



