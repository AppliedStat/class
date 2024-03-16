# Example 5.31 on Page 376 of Elsayed. 
times = c( 70, 180, 190, 200, 210, 230, 275, 295, 310, 370, 
          395, 420, 480, 495, 560, 600, 620, 680, 750, 780, 
          800, 900, 980,1010,1020 )
     d= c(1,1,0,1,1,1,1,1,1,0,1,1,1,1,1,0,0,1,1,1,1,1,0,0,0 )
cbind(times, d)

# Estimates of Survivals Using library
library(survival)
Sn = survfit(Surv(times,d)~1)
summary(Sn) 

# Compare the above with the following: 
nj = c(25,24,22,21,20,19,18,17,15,14,13,12,11,8,7,6,5,4)
dj = rep(1,18) 
cumprod( (nj-dj)/nj )

# Table 5.17 on Page 376 
h.hat = dj / nj 
H.hat = cumsum(h.hat)
R.ch  = exp( -cumsum(dj/nj) ) 
R.pl  = cumprod( (nj-dj)/nj )

out = cbind( times[d==1], nj, dj, h.hat, H.hat, R.ch, R.pl)
round(out,3)

# Plots of Survivals 
Sn = survfit(Surv(times,d)~1)
plot(Sn)
plot(Sn, conf.int=FALSE) # without CI
