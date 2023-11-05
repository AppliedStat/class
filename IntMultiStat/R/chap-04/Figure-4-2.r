
# install.packages("mvtnorm")

library(mvtnorm)


# (a) 
mu = c(5,5)
rho12   = 0.0
sigma11 = 1
sigma22 = 1
sigma12 = rho12 * sqrt(sigma11) * sqrt(sigma22)
Sigma = matrix(c(sigma11, sigma12, sigma12, sigma22), ncol=2)  

x1 = seq(0,10, by=0.1)
x2 = seq(0,10, by=0.1)
f = array( dim=c(length(x1), length(x2)) )

for ( i in seq_along(x1) ) { 
    for ( j in seq_along(x2) ) { 
        f[i,j] = dmvnorm( c(x1[i],x2[j]), mean=mu, sigma=Sigma)
    }
}

par( mfrow=c(1,2), pty="s" )
persp(x=x1, y=x2, z=f, theta=30, phi=45)
contour(x=x1, y=x2, z=f)



# (b) 
mu = c(5,5)
rho12   = 0.75
sigma11 = 1
sigma22 = 1
sigma12 = rho12 * sqrt(sigma11) * sqrt(sigma22)
Sigma = matrix(c(sigma11, sigma12, sigma12, sigma22), ncol=2) 

x1 = seq(0,10, by=0.1)
x2 = seq(0,10, by=0.1)
f = array( dim=c(length(x1), length(x2)) ) 

for ( i in seq_along(x1) ) { 
    for ( j in seq_along(x2) ) { 
        f[i,j] = dmvnorm( c(x1[i],x2[j]), mean=mu, sigma=Sigma)
    }
}

par( mfrow=c(1,2), pty="s" )
persp(x=x1, y=x2, z=f, theta=30, phi=45)
contour(x=x1, y=x2, z=f)







