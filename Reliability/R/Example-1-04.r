# =================================
# Example 1.4 on Page 19.
# =================================


h1 = function(x,rate) { rep(rate,length(x)) }
h2 = function(x,rate) { dexp(x,rate)/(1-pexp(x,rate))} 
h3 = function(x,rate) { exp( dexp(x,rate,log=T)-pexp(x,rate,lower.tail=F,log.p=T) )}

R = function(q, rate) pexp(q, rate=rate, lower.tail=FALSE)

# Reliability of a capacitor after 10^4 hours with rate=3E-8.
R(1E4, rate=3E-8)

n0 = 2000  # number of capacitors under test. (given value)
# ns = expected number of surviving capacitors at the end of the test (5000 hours).
# nf = expected number of failed capacitors during the test. 


p = R(5000, rate=3E-8)
ns = n0 * p
ns 

nf = n0 - ns 
nf 

