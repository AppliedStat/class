#
# Example 2.3.2 on Page 108
#

#==========================================
# We need to make adjoint R function for adjoint matrix
#-----------------------------------
adj <- function(A) {
  n = nrow(A)
  B = matrix(NA, n,n)
  for(i in 1L:n) for(j in 1L:n) B[j,i] = (-1L)^(i+j)*det(A[-i,-j])
  return(B)
}
#==========================================

#
#==========================================
# Question-1: Find the A inverse using the adjoint of A
#==========================================
#
A = matrix( c(1,2,0, 0,5,1, 3,1,3), nrow=3)

adj(A)

1/det(A) * adj(A)


# Using solve() function (not recommended for educational purpose)
solve(A)

#==========================================
# Double-check
#==========================================
Ainv = 1/det(A) * adj(A)

A %*% Ainv
round(A %*% Ainv, 5)


Ainv %*% A
round(Ainv %*% A, 5)





