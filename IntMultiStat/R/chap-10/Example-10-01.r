# Example 10.1  on Page 543

# Defind the general power of a matrix
"%^%" <- function(mat, power) with(eigen(mat), vectors %*% (values^power * t(vectors))) 

Rho11 = matrix( c(1, 0.4, 0.4, 1), nrow=2)
Rho12 = matrix( c(0.5, 0.6, 0.3, 0.4), byrow=T, nrow=2)
Rho21 = matrix( c(0.5, 0.3, 0.6, 0.4), byrow=T, nrow=2)
Rho22 = matrix( c(1, 0.2, 0.2, 1), nrow=2)


OUT = (rho11%^%(-1/2)) %*% Rho12 %*% solve(Rho22) %*% Rho21 %*% (rho11%^%(-1/2)) 
OUT

EIG = eigen(OUT)
EIG 
EIG$values 




