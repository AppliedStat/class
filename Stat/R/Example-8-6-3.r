#======================================================
# Example 8.6.3 on Page 414 
#------------------------------------------------------

# Xi (i=1,2,...25) are from N(60, 100)
# Critical region: X.bar >= 62.

# Figure 8.6-2 (theoretical power) 
K = function(mu) {
  1 - pnorm( (62-mu)/2 )
}
MU = seq(60, 68, length=81)

plot(MU, K(MU), xlim=c(58,68), ylim=c(0,1),  type="l" )

#------------------------------------------------------
# Advanced: empirical power (through simulation)
#------------------------------------------------------
ITER = 500
n=25; sigma=10; MU = seq(60, 68, length=81)
power = numeric(length(MU)) 
for ( j in 1:length(MU) ) { 
    mu = MU[j] 
    for ( i in 1:ITER ) { 
        xx = rnorm(n=n, mean=mu, sd=sigma)
        if ( mean(xx) >= 62 ) power[j] = power[j] + 1/ITER
   }
}

# Compare the empirical power with the theoretical power 
plot(MU, K(MU), xlim=c(58,68), ylim=c(0,1),  type="l" )
lines(MU, power, col="red")

#------------------------------------------------------
# Compare two power curves
#------------------------------------------------------
K1 = function(mu) {
  1 - pnorm( (62-mu)/2 )
}
#
K2  = function(mu) {
  1 - pnorm( (63.29-mu)/2 )
}

#
MU = seq(60, 68, length=81)

 plot(MU, K1(MU), xlim=c(58,68), ylim=c(0,1),  type="l" )
lines(MU, K2(MU), col="red")
abline(h=c(0.1587, 0.05), lty=2, col="gold")


#=======================================================
# Textbook Page 417
# Determine rejection region (c) and sample size (n)
#-------------------------------------------------------
alpha=0.025; beta=0.05; mu0=60; mu=65

n = 4* (qnorm(1-alpha)-qnorm(beta))^2
ceiling(n)

critical = (mu*qnorm(1-alpha)-mu0*qnorm(beta))/(qnorm(1-alpha)-qnorm(beta))
critical

