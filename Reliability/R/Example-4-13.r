# =================================
# Example 4.13 on Page 248.
# =================================

# Lexical (static) scoping.

# Example for R language
f = function(theta) { theta * sum(x) }

x = 1:10 
f(0.1)
f(1.0)
f(2.0)
#

#----------------------------
# Likelihood function. 
# See Example 4.7 on Page 243
L = function(lam) { 
    n = length(x)
    lam^n * exp( -lam*sum(x) )
}
nL = function(lam) { -L(lam) }

#----------------------------
# loglikelihood 
l = function(lam) { 
    n = length(x)
    n * log(lam) - lam*sum(x)
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
     n/lam - sum(x) 
}
#----------------------------


#====================================
# Minimizing with negative Likelihood
x = c(25, 75, 150, 230, 430, 700)

nlminb( start= 0.0001, nL )
nlminb( start= 0.001,  nL )
nlminb( start= 1.000,  nL )
nlminb( start= 10,     nL )
# The above are very sensitive to a starting value

LAM = seq(0, 0.02, length=101)
plot(LAM, nL(LAM), type="l")

#====================================
# Minimizing with negative loglikelihood

nlminb( start= 0.0001, nl )
nlminb( start= 0.001,  nl )
nlminb( start= 1.000,  nl )
nlminb( start= 10,     nl )
nlminb( start= 100,    nl )
# The above find the MLE very well.
# But, they report some warning messages.

#====================================
# Minimizing with negative loglikelihood
# (stable version)

nlminb( start= 0.0001, nl2 )
nlminb( start= 0.001,  nl2 )
nlminb( start= 1.000,  nl2 )
nlminb( start= 10,     nl2 )
nlminb( start= 100,    nl2 )
# The above find the MLE very well.
# No warning messages.

#====================================
# Solving the dl/dlam = 0. 

HUGE = sqrt(.Machine$double.xmax)
uniroot (Dl, interval=c(0,HUGE))

