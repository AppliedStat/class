
source("ellipse.R")
source("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/R/ellipse.R")

#========================================================================

 p = max(count.fields("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/P5-9.dat"))
 tmp = read.table    ("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/P5-9.dat",
                 fill=T, col.names=1:p)
 tmp2 = data.matrix(tmp)
 tmp2 [ upper.tri(tmp2) ] = t(tmp2)[ upper.tri(tmp2) ]

 S = tmp2; s=diag(S) 
 n = 61; p=6 ;  alpha = 0.05
 xbar = c(95.52, 164.38, 55.69, 93.39,  17.98,  31.13)

## ------------------------------------------------------------------------
## (a) 
## ------------------------------------------------------------------------

cut = sqrt( p*(n-1)/(n-p) * qf(1-alpha,p,n-p) )
# or cut = sqrt(  qchisq(1-alpha,df=p) )

CI1 = c( (xbar[1]) - cut* sqrt(s[1]/n),  (xbar[1]) + cut* sqrt(s[1]/n) )
CI2 = c( (xbar[2]) - cut* sqrt(s[2]/n),  (xbar[2]) + cut* sqrt(s[2]/n) )
CI3 = c( (xbar[3]) - cut* sqrt(s[3]/n),  (xbar[3]) + cut* sqrt(s[3]/n) )
CI4 = c( (xbar[4]) - cut* sqrt(s[4]/n),  (xbar[4]) + cut* sqrt(s[4]/n) )
CI5 = c( (xbar[5]) - cut* sqrt(s[5]/n),  (xbar[5]) + cut* sqrt(s[5]/n) )
CI6 = c( (xbar[6]) - cut* sqrt(s[6]/n),  (xbar[6]) + cut* sqrt(s[6]/n) )

CI1
CI2
CI3
CI4
CI5
CI6

## ------------------------------------------------------------------------
## (c) 
## ------------------------------------------------------------------------

## Using t (WITH Bonferroni)
cutB = qt(1-alpha/2/p, df=n-1)
## or cutB = qnorm(1-alpha/2/p) 

CI1B = c( (xbar[1]) - cutB* sqrt(s[1]/n),  (xbar[1]) + cutB* sqrt(s[1]/n) )
CI2B = c( (xbar[2]) - cutB* sqrt(s[2]/n),  (xbar[2]) + cutB* sqrt(s[2]/n) )
CI3B = c( (xbar[3]) - cutB* sqrt(s[3]/n),  (xbar[3]) + cutB* sqrt(s[3]/n) )
CI4B = c( (xbar[4]) - cutB* sqrt(s[4]/n),  (xbar[4]) + cutB* sqrt(s[4]/n) )
CI5B = c( (xbar[5]) - cutB* sqrt(s[5]/n),  (xbar[5]) + cutB* sqrt(s[5]/n) )
CI6B = c( (xbar[6]) - cutB* sqrt(s[6]/n),  (xbar[6]) + cutB* sqrt(s[6]/n) )

CI1B
CI2B
CI3B
CI4B
CI5B
CI6B


## ------------------------------------------------------------------------
## (d)  and (b) 
## ------------------------------------------------------------------------
Sb = S[ c(1,4), c(1,4) ]

c2 = (p*(n-1))/(n*(n-p)) * qf(1-alpha, p, n-p)
## c2 = qchisq(1-alpha,df=2) / n

plot( 0,0, xlim=c(65,125), ylim=c(80,105), type="n")
ellipse(S=Sb, xbar=xbar[c(1,4)], c2=c2)

abline( v = CI1B, lty=2, col="green", lwd=2 )  # Bonferroni 
abline( h = CI4B, lty=3, col="red",   lwd=2 )

abline( v = CI1 , lty=2, col="green" )  # Without Bonferroni 
abline( h = CI4 , lty=3, col="red" )

## ------------------------------------------------------------------------
## (e) 
## ------------------------------------------------------------------------

a = c(0,0,0,0, -1,1)
cut =qt(alpha/2/7,df=n-1, lower.tail=FALSE)
t(a) %*% xbar  +  cut * sqrt( t(a) %*% S %*% a /n)
t(a) %*% xbar  -  cut * sqrt( t(a) %*% S %*% a /n)





