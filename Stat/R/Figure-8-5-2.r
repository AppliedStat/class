## ==========================
## Figure 8.5-2 on Page 402 
## --------------------------
# n=25

mu = seq(60, 68, by=0.1)

K1 = 1-pnorm( (62-mu)/2 )
K2 = 1-pnorm( (63.29-mu)/2 )


#---------------------------------
plot (mu, K1)
lines(mu, K2)

#---------------------------------
plot (mu, K1, type="l", xlim=c(58,68), ylim=c(0,1), col="blue" )
lines(mu, K2, col="red")
abline(h=0.05, col="gold")

#========================================================================
# n=100

K3 = 1-pnorm( 61.645-mu )

plot (mu, K1, type="l", xlim=c(58,68), ylim=c(0,1), col="blue" )
lines(mu, K2, col="red")
lines(mu, K3, col="black", lty=2)
abline(h=0.05, col="gold")


#========================================================================
# Page 404 of Textbook

q1 = qnorm(0.05)
q2 = qnorm(0.975)

n = 4*(q2-q1)^2 
n

c = ( 65*q2-60*q1) / (q2-q1)
c



