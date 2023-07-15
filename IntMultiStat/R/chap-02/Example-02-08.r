

A = matrix( c(3,4,2,1), nrow=2 )

det(A)

solve(A)

# Double check. Notice roudning/computational errors

Ainv= solve(A)

A %*% Ainv

Ainv %*% A



