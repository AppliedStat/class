# =================================
# Example 4.12 on Page 247.
# =================================

#----------------------------
# Likelihood function. 
# See Example 4.8 on Page 244
L = function(theta) { 
    theta^10 * (1-theta)^40 
}
# negative Likelihood function
nL = function(theta) { -L(theta) }
#----------------------------
# loglikelihood
l = function(theta) { 
    10*log(theta) + 40*log(1-theta)
}
# negative loglikelihood 
nl = function(theta) { -l(theta) }

# negative loglikelihood 
# (with stability in numerical calculation)
nl2 = function(theta) { 
    if ( theta <=0 | theta >= 1 ) return(1000*abs(theta-0.5))
    -l(theta) 
}
#----------------------------
# Differentiating log-likelihood
Dl = function(theta) { 
     10/theta - 40/(1-theta)
}
#----------------------------

#====================================
# Minimizing with negative Likelihood

nlminb( start= 0.9, nL )
nlminb( start= 0.5, nL )
nlminb( start= 0.2, nL )
nlminb( start= 0.1, nL )
The above are very sensitive to a starting value

TH = seq(0, 1, length=101)
plot(TH, nL(TH), type="l")

#====================================
# Minimizing with negative loglikelihood

nlminb( start= 0.9, nl )
nlminb( start= 0.5, nl )
nlminb( start= 0.2, nl )
nlminb( start= 0.1, nl )
# The above find the MLE very well.
# But, it reports some Warning message.

TH = seq(0, 1, length=101)
plot(TH, nl(TH), type="l")

#====================================
# Minimizing with negative loglikelihood
# (stable version)

nlminb( start= 0.9, nl2 )
nlminb( start= 0.5, nl2 )
nlminb( start= 0.2, nl2 )
nlminb( start= 0.1, nl2 )
# The above find the MLE very well.
# No warning messages.

#====================================
# Solving the dl/dtheta = 0. 

uniroot (Dl, interval=c(0,1) )


