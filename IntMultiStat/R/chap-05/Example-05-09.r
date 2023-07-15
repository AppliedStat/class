
# xbar = x bar
# c2 = (n-1)/n * p/(n-p) * qf(1-alpha, p, n-p)
#       or c2 = qchisq(1-alpha,df=2)
# Usage, plot(x,y) and then use ellipse
##        plot(0,0, xlim=c(-5,5), ylim=c(-5,5), type="n")
##        ellipse(c2=5, axis=FALSE)

source("ellipse.R")
source("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/R/ellipse.R")


#=============================================================================
data = read.table("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/T5-8.DAT")
X = data.matrix( data[ 1:2 ] )


alpha = 0.01 
n = nrow(X); p=2 
## c2 = ((n-1)/n) * (p/(n-p)) * qf(1-alpha, p, n-p)
 c2 = qchisq(1-alpha,df=2)
plot(X[,1], X[,2], xlim=c(1500,5500), ylim=c(-2000,5500), pch=19)
points(mean(X[,1]), mean(X[,2]), pch="+" )
## abline( v=mean(X[,1]), h=mean(X[,2]), col="grey" )
ellipse(S=cov(X), xbar=colMeans(X), c2=c2)




