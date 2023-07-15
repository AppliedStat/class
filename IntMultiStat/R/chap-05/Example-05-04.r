
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

X = data.matrix( cbind(x1^0.25,x2^0.25) )

#============================================================================

alpha = 0.05 
n = nrow(X); p=ncol(X)

S = cov(X)

s = diag(S)

cut = sqrt( p*(n-1)/(n-p) * qf(1-alpha,p,n-p) )

CI1 = c( mean(X[,1]) - cut* sqrt(s[1]/n),  mean(X[,1]) + cut* sqrt(s[1]/n) )

CI2 = c( mean(X[,2]) - cut* sqrt(s[2]/n),  mean(X[,2]) + cut* sqrt(s[2]/n) )

CI1

CI2



##===========================================================
## Figure 5.1 on Page 223 (again, but without scatter plot)
c2 = (p*(n-1))/(n*(n-p)) * qf(1-alpha, p, n-p)
plot(X[,1], X[,2], xlim=c(.50,0.65), ylim=c(.55,.65), type="n")
ellipse(S=S, xbar=colMeans(X), c2=c2)
##===========================================================

## Horizontal and Vertical lines as in Figure 5.2 on Page 227 of the textbook

abline( h = CI2, lty=2 )
abline( v = CI1, lty=3, col="blue" )  # NB: colors()




