# =================================
# Figure 3.2 on Page 174.
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

aa = seq(0, 0.030, by=0.001) 
bb = seq(0, 0.030, by=0.001) 

na = length(aa)
nb = length(bb)
hh = array( dim=c(na,nb) ) 

for ( i in 1:na ) { 
    for ( j in 1:nb )  {
         hh[i,j] = h(800, aa[i], bb[j]) 
    }
}


persp(aa, bb, hh)

#--------------------------------------
# We need to make up
persp(aa, bb, hh, 
      xlab="lambda1", ylab="lambda2", zlab="hazard rate", 
        theta = -45, phi = 30, ticktype = "detailed")

#--------------------------------------
# More cosmetics
par( mfrow=c(1,2), pty="s", cex=0.7)
persp(aa, bb, hh, 
      xlab="lambda1", ylab="lambda2", zlab="hazard rate", 
        theta = -45, phi = 30, ticktype = "detailed")
contour(aa, bb, hh)





