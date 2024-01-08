# =================================
# Example 4.14 on Page 250.
# =================================

# Lexical (static) scoping.

#----------------------------
# Likelihood function. 
L = function(lam) { 
    n = length(x)
    lam^n * prod(x) * exp( -lam*sum(x^2)/2 )
}
nL = function(lam) { -L(lam) }

#----------------------------
# loglikelihood 
l = function(lam) { 
    n = length(x)
    n * log(lam) + sum(log(x)) - lam*sum(x^2/2)
}

# negative loglikelihood 
nl = function(lam) { -l(lam) }

# negative loglikelihood 
# (with stability in numerical calculation)
nl2 = function(lam) { 
      if ( lam <= 0 ) return( 1000*(abs(lam)+1) )
     -l(lam) 
}

#----------------------------
# Differentiating log-likelihood
Dl = function(lam) { 
     n = length(x)
     n/lam - sum(x^2)/2
}
#----------------------------

#====================================
# Minimizing with negative Likelihood
x = c(15, 21, 30, 39, 52, 68)

nlminb( start= 0.0001, nL )
nlminb( start= 0.001,  nL )
nlminb( start= 1.000,  nL )
nlminb( start= 10,     nL )
# The above are very sensitive to a starting value

LAM = seq(0, 0.01, length=101)
plot(LAM, nL(LAM), type="l")

#====================================
# Minimizing with negative loglikelihood

nlminb( start= 0.0001, nl )
nlminb( start= 0.001,  nl )
nlminb( start= 1.000,  nl )
nlminb( start= 10,     nl )
# The above can find the MLE very well.
# But, they report some warning messages.

#====================================
# Minimizing with negative loglikelihood
# (stable version)

nlminb( start= 0.0001, nl2 )
nlminb( start= 0.001,  nl2 )
nlminb( start= 1.000,  nl2 )
nlminb( start= 10,     nl2 )
# The above can find the MLE very well.
# No warning messages.

#====================================
# Solving the dl/dlam = 0. 

HUGE = sqrt(.Machine$double.xmax)
uniroot (Dl, interval=c(0,HUGE))

# Higher precision 
# tol = .Machine$double.eps^0.25
uniroot (Dl, interval=c(0,HUGE), tol=.Machine$double.eps^0.5)


#====================================
# Exact value
2 * length(x) / sum(x^2) 




