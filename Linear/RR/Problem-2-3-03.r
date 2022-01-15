#
# Problem 2.3.3 on Page 110
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
A = matrix( c(0,0,0,2,  0,0,-3,1,  0,1,2,-3,  1,0,0,-1), nrow=4)
adj(A)


# Using adj(A)
det( adj(A) )


# Using Theorem 2.3.4
det(A)^3


