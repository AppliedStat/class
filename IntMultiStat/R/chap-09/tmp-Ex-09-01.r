# Example 9.1 on Page 484

Sigma = matrix( c(19, 30, 2, 12, 30, 57, 5, 23,  2, 5, 38, 47,  12, 23, 47, 68), nrow=4)


#==============

L = matrix( c(4,7,-1,1, 1,2,6,8), ncol=2)
Psi = diag( c(2,4,1,3) )


L %*% t(L) + Psi



k <- 2
tmp <- array(runif(k), dim=c(k,k)); Tor <- qr.Q(qr(tmp))

Tor %*% t(Tor)
t(Tor) %*% Tor


Lt = L %*%  Tor


 Lt %*% t(Lt) + Psi


