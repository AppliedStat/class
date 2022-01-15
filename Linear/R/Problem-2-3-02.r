# Problem 2.3.2 on Page 109

#==========================================
# We need to make adjoint R function
#-----------------------------------
adj <- function(A) {
  n = nrow(A)
  B = matrix(NA, n,n)
  for(i in 1L:n) for(j in 1L:n) B[j,i] = (-1L)^(i+j)*det(A[-i,-j])
  return(B)
}
#==========================================


#==========================================
# Check: adj(B) %*% adj(A) = adj(A%*%B)
A = matrix( c(1,0,1, 0,-4,1, 3,2,1), nrow=3)
B = matrix( c(1,2,0, 0,-4,1,-1,1,3), nrow=3)

adj(A)
adj(B)


adj(B) %*% adj(A)

adj( A%*%B )

#==========================================
# NOTE:
adj( B%*%A ) is not equal to adj( A%*%B )

#==========================================
# NOTE: det(AB) = det(BA)
det( A%*%B ) 
det( B%*%A ) 


