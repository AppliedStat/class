# Example 9.2 on Page 486

Sigma = matrix( c( 1, 0.9, 0.7, 0.9, 1, 0.4, 0.7, 0.4, 1 ), nrow=3)

OUT = factanal( covmat=Sigma, factors=1)

L1 = c( sqrt(1.575), 0.9/sqrt(1.575), 0.7/sqrt(1.575))
L2 = -L1

Psi = diag( c(1-1.575, 1-0.9^2/1.575, 1-0.7^2/1.575) )


 L1 %*% t(L1) + Psi

 L2 %*% t(L2) + Psi

#==============

k <- 3
tmp <- array(runif(k), dim=c(k,k))
Tor <- qr.Q(qr(tmp))

Tor %*% t(Tor)
t(Tor) %*% Tor


L3 = L1 %*%  Tor



 L3 %*% t(L3) + Psi

