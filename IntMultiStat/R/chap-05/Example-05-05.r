
source("ellipse.R")
source("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/R/ellipse.R")


#=============================================================================
X = read.table("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/T5-2.DAT") 
X = data.matrix(X)

#============================================================================

alpha = 0.05 
n = nrow(X); p=ncol(X)

S = var(X)

s = diag(S)

cut = sqrt( p*(n-1)/(n-p) * qf(1-alpha,p,n-p) )

CI1 = c( mean(X[,1]) - cut* sqrt(s[1]/n),  mean(X[,1]) + cut* sqrt(s[1]/n) )

CI2 = c( mean(X[,2]) - cut* sqrt(s[2]/n),  mean(X[,2]) + cut* sqrt(s[2]/n) )

CI3 = c( mean(X[,3]) - cut* sqrt(s[3]/n),  mean(X[,3]) + cut* sqrt(s[3]/n) )

CI1

CI2

CI3



c2 = (p*(n-1))/(n*(n-p)) * qf(1-alpha, p, n-p)
##===========================================================
## Figure 5.3 
## Figure 5.3 (a) on Page 230 
tmp = ellipse(S=S[1:2,1:2], xbar=colMeans(X[,1:2]), c2=c2, plot=FALSE)
plot(X[,1], X[,2], xlim=range(tmp[,1]), ylim=range(tmp[,2]), type="n")
ellipse(S=S[1:2,1:2], xbar=colMeans(X[,1:2]), c2=c2)
abline( h = CI2, lty=2 )
abline( v = CI1, lty=3, col="blue" )  # NB: colors()
##-----------------------------------------------------------

## Figure 5.3 (b) on Page 230 
tmp = ellipse(S=S[c(1,3),c(1,3)], xbar=colMeans(X[,c(1,3)]), c2=c2, plot=FALSE)

plot(x=NULL, y=NULL, xlim=range(tmp[,1]), ylim=range(tmp[,2]), type="n")
#  N.B.: ylim=range(tmp[,2],  not ylim=range(tmp[,3]

ellipse(S=S[c(1,3),c(1,3)], xbar=colMeans(X[,c(1,3)]), c2=c2)
abline( h = CI3, lty=2 )
abline( v = CI1, lty=3, col="blue" )  # NB: colors()
##-----------------------------------------------------------

## Figure 5.3 (c) on Page 230 
tmp = ellipse(S=S[c(2,3),c(2,3)], xbar=colMeans(X[,c(2,3)]), c2=c2, plot=FALSE)

plot(x=NULL, y=NULL, xlim=range(tmp[,1]), ylim=range(tmp[,2]), type="n")

ellipse(S=S[c(2,3),c(2,3)], xbar=colMeans(X[,c(2,3)]), c2=c2)
abline( h = CI3, lty=2 )
abline( v = CI2, lty=3, col="blue" )  # NB: colors()
##-----------------------------------------------------------











