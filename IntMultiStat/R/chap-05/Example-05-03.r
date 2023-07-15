
# xbar = x bar
# c2 = (n-1)/n * p/(n-p) * qf(1-alpha, p, n-p)
#       or c2 = qchisq(1-alpha,df=2)
# Usage, plot(x,y) and then use ellipse
##        plot(0,0, xlim=c(-5,5), ylim=c(-5,5), type="n")
##        ellipse(c2=5, axis=FALSE)

source("ellipse.R")
source("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/R/ellipse.R")

#=============================================================================
x1 = read.table("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/T4-1.DAT")
x2 = read.table("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/T4-5.DAT")

X = data.matrix( cbind(x1^0.25, x2^0.25) )

alpha = 0.05 
n = nrow(X); p=ncol(X) # or p=2  
plot(X[,1], X[,2], xlim=c(.50,0.65), ylim=c(.55,.65))

c2 = (p*(n-1))/(n*(n-p)) * qf(1-alpha, p, n-p)

##===========================================================
## Figure 5.1 on Page 223 
plot(X[,1], X[,2], xlim=c(.50,0.65), ylim=c(.55,.65))
ellipse(S=cov(X), xbar=colMeans(X), c2=c2)
##===========================================================

##===========================================================
## See all the scatter plot
plot(X[,1], X[,2] )
ellipse(S=cov(X), xbar=colMeans(X), c2=c2)

cut2 = ((n-1)/1) * (p/(n-p)) * qf(1-alpha, p, n-p)    ## N.B. cut2 = n*c2 
ellipse(S=cov(X), xbar=colMeans(X), c2=cut2)

##===========================================================
## Again 
plot(X[,1], X[,2], xlim=0:1, ylim=0:1 )
ellipse(S=cov(X), xbar=colMeans(X), c2=c2)

cut2 = ((n-1)/1) * (p/(n-p)) * qf(1-alpha, p, n-p)    ## N.B. cut2 = n*c2 
ellipse(S=cov(X), xbar=colMeans(X), c2=cut2)

##===========================================================
## Figure 5.1 on Page 223 (again, but without scatter plot)
plot(X[,1], X[,2], xlim=c(.50,0.65), ylim=c(.55,.65), type="n")
ellipse(S=cov(X), xbar=colMeans(X), c2=c2)
##===========================================================

