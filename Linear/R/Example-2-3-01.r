# Example 2.3.1 on Page 106

#==========================================
# We need to make adjoint R function
#-----------------------------------
adjoint1 <- function(A) {
  n = nrow(A)
  B = matrix(NA, n,n)
  for(i in 1L:n) for(j in 1L:n) B[j,i] = (-1L)^(i+j)*det(A[-i,-j])
  return(B)
}
#-----------------------------------
# More advanced
adjoint2 <- function(A) {
  n = nrow(A)
  outer(1L:n,1L:n, Vectorize(function(j,i) (-1L)^(i+j)*det(A[-i,-j])) )
}
#==========================================

# Example 2.3.1 on Page 106
A = matrix( c(1,2,0, 0,5,1, 3,1,3), nrow=3)
adjoint1(A)
adjoint2(A)


# Same as the above, but adj() is used instead of adjoint1
adj = adjoint1
adj(A)


