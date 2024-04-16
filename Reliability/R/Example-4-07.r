# =================================
# Example 4.7 on Page 262.
# (Figure 4.2 on Page 263)
# =================================

#----------------------------
L = function(mu) { 
     exp(-2*mu) * mu^22 / ( factorial(10)*factorial(12) )
}
#----------------------------
MU = seq(0, 16, length=17)
L2 = L(MU)
cbind(MU, L2)
 plot(MU, L2, type="l")

#----------------------------
l = function(mu) { 
     22*log(mu) - 2*mu  # -log( factorial(10)*factorial(12) )
}
#----------------------------

MU = 6:16 
l2 = l(MU)
cbind(MU, l2) 
 plot(MU, l2, type="l")
abline(v=11, lty=2)


