#======================================================
# Example 8.5.2 on Page 401
#------------------------------------------------------

# Xi (i=1,2,...25) are from N(60, 100)
# Critical region: X.bar >= 62.

# Figure 8.5-2 (theoretical power) 
K = function(mu) {
  1 - pnorm( (62-mu)/2 )
}
MU = seq(60, 68, length=81)

plot(MU, K(MU), xlim=c(58,68), ylim=c(0,1),  type="l" )


# Empirical power (through simulation)
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


   
