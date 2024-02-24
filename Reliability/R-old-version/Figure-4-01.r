# =================================
# Figure 4.1 on Page 242.
# =================================

#----------------------------
p2 = function(theta) { 
     choose(15,2) * theta^2 * (1-theta)^13
}
#----------------------------

TH = seq(0, 0.45, length=46)

P2 = p2(TH)

cbind(TH, P2) 

plot(TH, P2, type="l")

#===================================
# Find the minimizer / maximizer 
#===================================

# Unstable
p3 = function(theta){ - p2(theta) } 

nlminb( start= 0.9, p3 ) 
nlminb( start= 0.5, p3 ) 
nlminb( start= 0.1, p3 ) 

#------------------------------------
# Stable
p4 = function(theta){ 
     # if ( theta <=0 || theta >= 1 ) return(1000)
     if ( theta <=0 | theta >= 1 ) return(1000*abs(theta-0.5))
     - 2*log(theta) - 13*log(1-theta) 
}

nlminb( start= 0.9, p4 )
nlminb( start= 0.5, p4 )
nlminb( start= 0.1, p4 )

#-----------------------------------
# 
TH = seq(-0.1, 1.1, length=121)
tmp = numeric(length(TH))
for ( i in 1:length(TH) ) {
    tmp[i] = p4(TH[i])
}

plot(TH, tmp, type="l")


# Zooming
plot(TH, tmp, type="l", xlim=c(0.01,0.5), ylim=c(5,10) )
abline(v = 2/15, col="red")

