# =================================
# Figure 3.1 on Page 173.
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

tt = seq(0,2000, length=101)
hh = h(tt, a=0.009, b=0.008)
plot(tt, hh, type="l")


