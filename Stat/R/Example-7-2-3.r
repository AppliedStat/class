## ==========================
## Example 7.2-3 on Page 328 
## --------------------------
set.seed(1)

nx=6; ny=18; sigma2x=1; sigma2y=36

# Calculate the d.f. using Eq. (7.2-1) 
r = (sigma2x/nx + sigma2y/ny)^2 /( 1/(nx-1)*(sigma2x/nx)^2+1/(ny-1)*(sigma2y/ny)^2 ) 
r
floor(r)

N = 500
T = numeric(N)
W = numeric(N)

#----------------------------------------------------
for ( i in 1:N ) { 
    x = rnorm(nx, 0, sqrt(sigma2x))
    y = rnorm(ny, 0, sqrt(sigma2y))
    xbar = mean(x); ybar = mean(y)
    s2x = var(x); s2y = var(y)
    s2p = ( (nx-1)*s2x + (ny-1)*s2y ) / (nx+ny-2)
    T[i] = (xbar-ybar) / sqrt( s2p * (1/nx + 1/ny) )
    W[i] = (xbar-ybar) / sqrt( s2x/nx + s2y/ny )
}
#----------------------------------------------------


#
# Figure 7.2-1 (a): T(22) quantiles versus T order statistics
#
par( mfrow=c(1,2) )

pdf = dt( seq(-3,3, by=0.1), df=22 )
 hist(T, probability=TRUE, nclass=20 )
lines(seq(-3,3, by=0.1), pdf, type="l", col="red")

qt22 = qt( ppoints(N), df=22)
qqplot(T, qt22, xlim=c(-3,3), ylim=c(-3,3), pch=20)
abline(h=0, v=0, lty=3)
abline(a=0, b=1, lty=1, col="red")

#
# Figure 7.2-1 (b): T(19) quantiles versus T order statistics
#
par( mfrow=c(1,2) )

pdf = dt( seq(-3,3, by=0.1), df=19 )
 hist(W, probability=TRUE, nclass=20) 
lines(seq(-3,3, by=0.1), pdf, type="l", col="red")

qt19 = qt( ppoints(N), df=19)
qqplot(W, qt19, xlim=c(-3,3), ylim=c(-3,3), pch=20)
abline(h=0, v=0, lty=3)
abline(a=0, b=1, lty=1, col="red")


## ====================================================
## Figure 7.2-2 on Page 329 
## ====================================================
set.seed(1)

nx=18; ny=6;   ### <-- NOTE: sample sizes are different.
sigma2x=1; sigma2y=36

# Calculate the d.f. using Eq. (7.2-1) 
r = (sigma2x/nx + sigma2y/ny)^2 /( 1/(nx-1)*(sigma2x/nx)^2+1/(ny-1)*(sigma2y/ny)^2 ) 
r
floor(r)

N = 500
T = numeric(N)
W = numeric(N)

#----------------------------------------------------
for ( i in 1:N ) { 
    x = rnorm(nx, 0, sqrt(sigma2x))
    y = rnorm(ny, 0, sqrt(sigma2y))
    xbar = mean(x); ybar = mean(y)
    s2x = var(x); s2y = var(y)
    s2p = ( (nx-1)*s2x + (ny-1)*s2y ) / (nx+ny-2)
    T[i] = (xbar-ybar) / sqrt( s2p * (1/nx + 1/ny) )
    W[i] = (xbar-ybar) / sqrt( s2x/nx + s2y/ny )
}
#----------------------------------------------------

#
# Figure 7.2-2 (a): T(22) quantiles versus T order statistics
#
par( mfrow=c(1,2) )

pdf = dt( seq(-3,3, by=0.1), df=22 )
 hist(T, probability=TRUE, nclass=20, ylim=c(0,max(pdf)) )
lines(seq(-3,3, by=0.1), pdf, type="l", col="red")

qt22 = qt( ppoints(N), df=22)
qqplot(T,qt22, xlim=c(-3,3), ylim=c(-3,3), pch=20 )
abline(h=0, v=0, lty=3)
abline(a=0, b=1, lty=1, col="red")


#
# Figure 7.2-2 (b): T(5) quantiles versus T order statistics
#

par( mfrow=c(1,2) )

pdf = dt( seq(-3,3, by=0.1), df=5 )
 hist(W, probability=TRUE, nclass=20, ylim=c(0,max(pdf)) ) 
lines(seq(-3,3, by=0.1), pdf, type="l", col="red")


qt5 = qt( ppoints(N), df=5)
qqplot(W,qt5, xlim=c(-3,3), ylim=c(-3,3), pch=20 )
abline(h=0, v=0, lty=3)
abline(a=0, b=1, lty=1, col="red")

