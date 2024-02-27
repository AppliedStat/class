# =================================
# Figure 1.17 on Page 29.
# =================================

#----------------------------
# harzard function
h = function(x, a,b) { b*exp(a*x) }
R = function(x, a,b) { exp( -b/a*(exp(a*x)-1) ) }

#--- Start plotting ---
xx = seq(0, 1, length=101)

h1 = h(xx, a=0.5, b=2  )
h2 = h(xx, a=1.0, b=1.2)
h3 = h(xx, a=1.0, b=1.0)

R1 = R(xx, a=0.5, b=2  )
R2 = R(xx, a=1.0, b=1.2)
R3 = R(xx, a=1.0, b=1.0)

## par( mfrow=c(1,2) )
#----------------------
 plot(xx, h1, type="l")
lines(xx, h2)
lines(xx, h3)
# the above is weird

#======================
par( mfrow=c(1,2) )
 plot(xx, h1, type="l", ylim=c(1, max(h1,h2,h3)) )
lines(xx, h2, col="blue")
lines(xx, h3, col="red")

#----------------------
 plot(xx, R1, type="l", ylim=c(0,1) )
lines(xx, R2, col="blue")
lines(xx, R3, col="red")


