# =================================
# Example 4.16 on Page 272.
# =================================

x = c(
0.3103180, 0.4330840, 0.240185, 0.252469, 0.219205,
0.3993390, 0.0491333, 0.271767, 0.272427, 0.203729,
0.1635580, 0.6752440, 0.427734, 0.392823, 0.459576,
0.6630620, 1.0002700, 0.575572, 1.238110, 1.117190,
0.0749942, 0.2080570, 0.432493, 0.263040, 1.383370
)

# x-bar 
mean(x)

# log-likelihood
l = function(par) { 
    gamma= par[1]
    theta= par[2]
    n = length(x)
    -n*gamma*log(theta) - n*lgamma(gamma) + (gamma-1)*sum(log(x)) - sum(x)/theta 
}

# negative log-likelihood 
nl = function(par) { -l(par) }


nlminb( start=c(1,1), nl) # With some warnings. 


#========================================================
GAMMA = seq(0.1, 5, by=0.1)
THETA = seq(0.05, 1, by=0.05)
NL    = array( dim=c(length(GAMMA),length(THETA)) )

for ( i in seq_along(GAMMA) ) { 
    for ( j in seq_along(THETA) )  {
         NL[i,j] = nl( par = c(GAMMA[i], THETA[j]) ) 
    }
}
persp(GAMMA, THETA, NL)
persp(GAMMA, THETA, NL, theta=-30, phi=45)
contour(GAMMA, THETA, NL)
#========================================================


# Better nl function
nl2 = function(par) {
      TINY = .Machine$double.eps
      HUGE = .Machine$double.xmax^0.1 
      if ( par[1] < TINY ) return( (1-par[1])*HUGE )
      if ( par[2] < TINY ) return( (1-par[2])*HUGE )
      -l(par)
}

nlminb( start=c(1,1), nl2) # With No Warning.

#=======================================================
# MoM (Method-of-Moments) estimate
#=======================================================
gamma.hat = mean(x)^2 / var(x)
theta.hat = var(x) / mean(x)

gamma.hat
theta.hat

nlminb( start=c(gamma.hat,theta.hat), nl2) # With No Warning.









