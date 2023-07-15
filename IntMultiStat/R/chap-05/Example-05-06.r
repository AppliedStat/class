

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
##---------------------------------------------------------------------------


## Using t (Without Bonferroni)
cutt = qt(1-alpha/2, df=n-1) 

CI1t = c( mean(X[,1]) - cutt* sqrt(s[1]/n),  mean(X[,1]) + cutt* sqrt(s[1]/n) )
CI2t = c( mean(X[,2]) - cutt* sqrt(s[2]/n),  mean(X[,2]) + cutt* sqrt(s[2]/n) )

CI1t
CI2t 

## Using t (WITH Bonferroni)
cutB = qt(1-alpha/2/p, df=n-1) 

CI1B = c( mean(X[,1]) - cutB* sqrt(s[1]/n),  mean(X[,1]) + cutB* sqrt(s[1]/n) )
CI2B = c( mean(X[,2]) - cutB* sqrt(s[2]/n),  mean(X[,2]) + cutB* sqrt(s[2]/n) )

CI1B
CI2B 

# Using F
cutF = sqrt( p*(n-1)/(n-p) * qf(1-alpha,p,n-p) )

CI1F = c( mean(X[,1]) - cutF* sqrt(s[1]/n),  mean(X[,1]) + cutF* sqrt(s[1]/n) )
CI2F = c( mean(X[,2]) - cutF* sqrt(s[2]/n),  mean(X[,2]) + cutF* sqrt(s[2]/n) )

CI1F
CI2F

c(cutt, cutB, cutF)

cbind( CI1t,  CI1B, CI1F,  CI2t, CI2B, CI2F)


##===========================================================
## Figure 5.1 on Page 223 (again, but without scatter plot)
c2 = (p*(n-1))/(n*(n-p)) * qf(1-alpha, p, n-p)

tmp = ellipse(S=S, xbar=colMeans(X), c2=c2, plot=FALSE)
plot(x=NULL, y=NULL, xlim=range(tmp[,1]), ylim=range(tmp[,2]), type="n")

ellipse(S=S, xbar=colMeans(X), c2=c2)
##===========================================================
## Horizontal and Vertical lines as in Figure 5.2 on Page 227 of the textbook

abline( h = CI2t, lty=1, col="red" )  # using t (without Bonferroni)
abline( v = CI1t, lty=1, col="red" )  

abline( h = CI2B, lty=1, col="blue" ) # using t with Bonferroni 
abline( v = CI1B, lty=1, col="blue" )  

abline( h = CI2F, lty=1, col="green" ) # using F 
abline( v = CI1F, lty=1, col="green" )  

