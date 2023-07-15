
source("ellipse.R")

source("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/R/ellipse.R")
#=============================================================================


data = read.table("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/P1-4.DAT")

x1 = data[[1]]
x2 = data[[2]]

X = cbind(x1,x2)

S = var(X)
xbar = colMeans(X)

c2 = 1.4 
tmp = ellipse(S=S, xbar=xbar, c2=c2, plot=FALSE)
plot(x=NULL, y=NULL, xlim=range(tmp[,1]), ylim=range(tmp[,2]), type="n")
ellipse(S=S, xbar=xbar, c2=c2, plot=TRUE)


# --------------------------------------------------

S = matrix( c(7476.45, 303.62, 303.62, 26.19), nrow=2 )
xbar = c(155.60, 14.70)
c2 = 1.4 

tmp = ellipse(S=S, xbar=xbar, c2=c2, plot=FALSE)
plot(x=NULL, y=NULL, xlim=range(tmp[,1]), ylim=range(tmp[,2]), type="n")
ellipse(S=S, xbar=xbar, c2=c2, plot=TRUE)



