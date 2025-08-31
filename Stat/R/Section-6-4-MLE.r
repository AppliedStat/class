
# Example: MLE 

#===============================================
# Likelihood
#-----------------------------------------------
Like = function(p,sumx,n) { p^sumx * (1-p)^(n-sumx) }
p = seq(0,1, length=101)

# sum of x = 30, n=100
 plot(p, Like(p, sumx=30, n=100), type="l")

# sum of x = 70, n=100
lines(p, Like(p, sumx=70, n=100), col="red")

# sum of x = 65, n=100
lines(p, Like(p, sumx=65, n=100), col="green")

# Check if they are maximizers
abline(v=0.3,  lty=3)
abline(v=0.7,  lty=3, col="red")
abline(v=0.65, lty=3, col="green")


