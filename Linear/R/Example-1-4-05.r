# Page 56

A = matrix( c(2,-1, 1,3), ncol=2)

Ainv = matrix( c(3,1,  -1,2)/7, ncol=2)

# Check
A %*% Ainv


#
A %*% A %*% A 

#
Ainv %*% Ainv %*% Ainv

343 * ( Ainv %*% Ainv %*% Ainv )

#
solve( A %*% A %*% A )

343 * solve( A %*% A %*% A )


