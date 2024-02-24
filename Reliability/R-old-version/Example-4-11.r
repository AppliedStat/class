# =================================
# Example 4.11 on Page 247.
# =================================

#----------------------------
# Likelihood function. 
# See Example 4.7 on Page 243
L = function(mu) { 
    exp(-2*mu)*mu^22 /(factorial(10)*factorial(12))
}
nL = function(mu) { -L(mu) }

#----------------------------
# loglikelihood 
l = function(mu) { 
     22*log(mu)-2*mu  #-log(factorial(10)*factorial(12))
}

# negative loglikelihood 
nl = function(mu) { -l(mu) }

# negative loglikelihood 
# (with stability in numerical calculation)
nl2 = function(mu) { 
      if ( mu <= 0 ) return( 1000*(abs(mu)+1) )
     -l(mu) 
}

#----------------------------
# Differentiating log-likelihood
Dl = function(mu) { 
     22/mu - 2
}
#----------------------------


#====================================
# Minimizing with negative Likelihood

nlminb( start=  1, nL )
nlminb( start= 10, nL )
nlminb( start= 15, nL )
nlminb( start= 50, nL )
# The above are very sensitive to a starting value

MU = seq(0, 50, length=51)
plot(MU, nL(MU), type="l")

#====================================
# Minimizing with negative loglikelihood

nlminb( start=  1, nl )
nlminb( start= 10, nl )
nlminb( start= 15, nl )
nlminb( start= 50, nl )
# The above find the MLE very well.
# But, they report some warning messages.

MU = seq(0, 50, length=51)
plot(MU, nl(MU), type="l")

#====================================
# Minimizing with negative loglikelihood
# (stable version)

nlminb( start=  1, nl2 )
nlminb( start= 10, nl2 )
nlminb( start= 15, nl2 )
nlminb( start= 50, nl2 )
# The above find the MLE very well.
# No warning messages.

#====================================
# Solving the dl/dmu = 0. 

HUGE = sqrt(.Machine$double.xmax)
uniroot (Dl, interval=c(0,HUGE))

