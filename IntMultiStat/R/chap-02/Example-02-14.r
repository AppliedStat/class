# Example 02.14 on Page 72 of Textbook

Sigma = matrix( c(4,1,2, 1,9,-3,  2,-3,25), nrow=3, byrow=TRUE ) 

Sigma = matrix( c(4,1,2, 1,9,-3,  2,-3,25), nrow=3, )  # This is OK b/c Sigma is symmetric

diag( Sigma )

#---------------------------------
#- Method A 

V = diag( diag(Sigma) )

Eigen = eigen(V)

P = Eigen$vectors

lam = Eigen$values

LAM.half.inv = diag ( 1/sqrt(lam) )

V.half.inv = P %*% LAM.half.inv %*% t(P)

Rho = V.half.inv %*% Sigma %*% V.half.inv

Rho

#---------------------------------
#- Method B 

V = diag( diag(Sigma) )

V

V.half = sqrt(V)     

V.half.inv = solve(V.half)  

tmp =  diag( 1/sqrt(diag(Sigma)) )  ## N.B.: tmp = V.half.inv 

Rho = V.half.inv %*% Sigma %*% V.half.inv

#---------------------------------
#- Method C 

d = sqrt( diag( Sigma ) )

t(Sigma/d)/d
 
#---------------------------------
#- Method D (Using intrinsic R function)

cov2cor(Sigma)


