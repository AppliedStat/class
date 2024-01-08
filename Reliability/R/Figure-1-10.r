# =================================
# Figures 1.10 and 1.11 on Page 18.
# =================================

lambda = 2
end = 3*max(lambda, 1/lambda)
#----------------------------

# harzard function
h1 = function(x,rate) { rep(rate,length(x)) }
h2 = function(x,rate) { dexp(x,rate)/(1-pexp(x,rate))} # h1 is better 
  # test: h1( 1:100, rate=lambda) versus h2( 1:100, rate=lambda)

  # We can improve h2 as below: 
h3 = function(x,rate) { exp( dexp(x,rate,log=T)-pexp(x,rate,lower.tail=F,log.p=T) )} 


#--- Start plotting ---
xx = seq(0, end, length=101)

haz = h1(xx, rate=lambda)
pdf = dexp(xx, rate=lambda)
cdf = pexp(xx, rate=lambda)
rel = 1-pexp(xx, rate=lambda)

par( mfrow=c(2,2) )
#----------------------
plot(xx, haz, type="l")
plot(xx, pdf, type="l")
plot(xx, cdf, type="l")
plot(xx, rel, type="l")

