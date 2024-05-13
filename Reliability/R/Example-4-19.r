# =================================
# Example 4.19 on Page 277.
# =================================

x = x0 = c(
0.3103180, 0.4330840, 0.240185, 0.252469, 0.219205,
0.3993390, 0.0491333, 0.271767, 0.272427, 0.203729,
0.1635580, 0.6752440, 0.427734, 0.392823, 0.459576,
0.6630620, 1.0002700, 0.575572, 1.238110, 1.117190,
0.0749942, 0.2080570, 0.432493, 0.263040, 1.383370
)

# log-likelihood
l = function(par) { 
    gamma= par[1]
    theta= par[2]
    n = length(x)
    -n*gamma*log(theta) - n*lgamma(gamma) + (gamma-1)*sum(log(x)) - sum(x)/theta 
}

# negative log-likelihood 
nl = function(par) { -l(par) }

# Better nl function
nl2 = function(par) {
      TINY = .Machine$double.eps
      HUGE = .Machine$double.xmax^0.1 
      if ( par[1] < TINY ) return( (1-par[1])*HUGE )
      if ( par[2] < TINY ) return( (1-par[2])*HUGE )
      -l(par)
}

# Parameter estimates 
out = nlminb( start=c(1,1), nl2) # With No Warning.

gamma.hat = out$par[1]
theta.hat = out$par[2]

# Estimate of Information matrix
n = length(x)

I11 = n * trigamma(gamma.hat)
I12 = I21 = n / theta.hat 
I22 = n*gamma.hat/theta.hat^2

I.hat = matrix(c(I11,I21,I12,I22), nrow=2)
I.hat

# Estimate of variance-covariance matrix 
solve(I.hat)


#######################################################################
# The above results are noticeably different from the textbook results 
# Double-check with a basic simulation
#######################################################################

gamma0 = gamma.hat 
theta0 = theta.hat 

set.seed(1)
ITER = 10000
GAMMA = THETA = numeric(ITER)

for ( i in seq_len(ITER) ) { 
    x = rgamma(n, shape=gamma0, scale=theta0)
    out = nlminb( start=c(gamma0,theta0), nl2) # With No Warning.
    GAMMA[i] = out$par[1]
    THETA[i] = out$par[2]
}

v11 = var(GAMMA)
v12 = v21 = cov(GAMMA,THETA)
v22 = var(THETA)

matrix( c(v11,v21,v12,v22), nrow=2)

#######################################################################
# The above results are noticeably different from the textbook results 
# Double-check with Bootstrap simulation
#######################################################################
gamma0 = gamma.hat
theta0 = theta.hat

set.seed(1)
ITER = 1000
GAMMA = THETA = numeric(ITER)

for ( i in seq_len(ITER) ) { 
    x = x0[ sample(1:n, size=n, replace=TRUE) ]
    out = nlminb( start=c(gamma0,theta0), nl2) # With No Warning.
    GAMMA[i] = out$par[1]
    THETA[i] = out$par[2]
}

v11 = var(GAMMA)
v12 = v21 = cov(GAMMA,THETA)
v22 = var(THETA)

matrix( c(v11,v21,v12,v22), nrow=2)

