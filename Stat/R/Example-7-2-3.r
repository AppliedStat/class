## ==========================
## Example 7.2-3 on Page 320 
## --------------------------
set.seed(1)

n=6; m=18; sigma2x=1; sigma2y=36

# Calculate the d.f. using Eq. (7.2-1) 
r = (sigma2x/n + sigma2y/m)^2 /( 1/(n-1)*(sigma2x/n)^2+1/(m-1)*(sigma2y/m)^2 ) 
r
floor(r)

N = 500
T = numeric(N)
W = numeric(N)

#----------------------------------------------------
for ( i in 1:N ) { 
    x = rnorm(n, 0, sqrt(sigma2x))
    y = rnorm(m, 0, sqrt(sigma2y))
    xbar = mean(x); ybar = mean(y)
    s2x = var(x); s2y = var(y)
    s2p = ( (n-1)*s2x + (m-1)*s2y ) / (n+m-2)
    T[i] = (xbar-ybar) / sqrt( s2p * (1/n + 1/m) )
    W[i] = (xbar-ybar) / sqrt( s2x/n + s2y/m )
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
## Figure 7.2-2 on Page 322 
## ====================================================
set.seed(1)

n=18; m=6;   ### <-- NOTE: sample sizes are different.
sigma2x=1; sigma2y=36

# Calculate the d.f. using Eq. (7.2-1) 
r = (sigma2x/n + sigma2y/m)^2 /( 1/(n-1)*(sigma2x/n)^2+1/(m-1)*(sigma2y/m)^2 ) 
r
floor(r)

N = 500
T = numeric(N)
W = numeric(N)

#----------------------------------------------------
for ( i in 1:N ) { 
    x = rnorm(n, 0, sqrt(sigma2x))
    y = rnorm(m, 0, sqrt(sigma2y))
    xbar = mean(x); ybar = mean(y)
    s2x = var(x); s2y = var(y)
    s2p = ( (n-1)*s2x + (m-1)*s2y ) / (n+m-2)
    T[i] = (xbar-ybar) / sqrt( s2p * (1/n + 1/m) )
    W[i] = (xbar-ybar) / sqrt( s2x/n + s2y/m )
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
# Figure 7.2-1 (b): T(5) quantiles versus T order statistics
#

par( mfrow=c(1,2) )

pdf = dt( seq(-3,3, by=0.1), df=5 )
 hist(W, probability=TRUE, nclass=20, ylim=c(0,max(pdf)) ) 
lines(seq(-3,3, by=0.1), pdf, type="l", col="red")


qt5 = qt( ppoints(N), df=5)
qqplot(W,qt5, xlim=c(-3,3), ylim=c(-3,3), pch=20 )
abline(h=0, v=0, lty=3)
abline(a=0, b=1, lty=1, col="red")

