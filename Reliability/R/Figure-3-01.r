# =================================
# Figure 3.1 on Page 189.
# =================================

#----------------------------
# harzard function
# a=lambda1, b=lambda2
h = function(t, a, b) {
    E1 = exp(-a*t) 
    E2 = exp(-b*t) 
    (a*E1+b*E2-(a+b)*E1*E2) / (E1+E2-E1*E2) 
}
#----------------------------

par( mfrow=c(1,2) )


tt = seq(0,160, length=161)
hh = h(tt, a=0.009, b=0.008)
plot(tt, hh, type="l")



tt = seq(0,2000, length=101)
hh = h(tt, a=0.009, b=0.008)
plot(tt, hh, type="l")


