#
# Example 2.3.3 on Page 110
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
#
A = matrix( c(1,0,-1, 2,-1,1, 3,1,1), nrow=3)
adj(A)


# Using adj(A)
det( adj(A) )


# Using Theorem 2.3.4 on Page 109
det(A)^2


