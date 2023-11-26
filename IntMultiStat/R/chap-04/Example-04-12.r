# Example 4.12 on Page 184 

# Data from Exercise 1.4 on Page 38.
data = read.table("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/P1-4.DAT")

x1 = data[[1]] 
x2 = data[[2]] 
df  = 2 

X = cbind(x1,x2)

S = cov(X)
Sinv = solve(S)
xbar = colMeans(X)


#=====================================================================
# If we use mahalanobis() function, it is very convenient. 
mahalanobis(X, center=xbar, cov=S)

plot( mahalanobis(X, center=xbar, cov=S) )
abline( h = qchisq(0.5, df=2), col="green" )
# NOTE: only 4 distance values are less than qchisq(0.5, df=2)
#=====================================================================


#=====================================================================
ellipse <- function(S=diag(c(1,1)), xbar=c(0,0), c2, resolution=100,plot=TRUE, axis=TRUE) {
   if ( !is.matrix(S) )      stop("S should be 2x2 matrix")
   if ( !all( dim(S) == 2 ) ) stop("S should be 2x2 matrix")
   angles <- seq(0, by = (2 * pi)/resolution, length=resolution+1)
   sd = S[1,2] / sqrt(S[1,1] * S[2,2])
   projmat = diag(c(0,0))
   projmat[1,1] = sqrt(S[1,1] %*% (1+sd)/2)
   projmat[1,2] =-sqrt(S[1,1] %*% (1-sd)/2)
   projmat[2,1] = sqrt(S[2,2] %*% (1+sd)/2)
   projmat[2,2] = sqrt(S[2,2] %*% (1-sd)/2)
   circle  = cbind(cos(angles), sin(angles))
   ellipse = t(xbar + sqrt(c2) * projmat %*% t(circle))
   if (plot == TRUE) {
       lines(ellipse)
      if(axis==TRUE) {
          tmp = eigen(S)
          lam1 = tmp$values[1];  lam2 = tmp$values[2]
          e1a  = tmp$vectors[,1]*sqrt(c2*lam1) + xbar
          e1b  =-tmp$vectors[,1]*sqrt(c2*lam1) + xbar
          e2a  = tmp$vectors[,2]*sqrt(c2*lam2) + xbar
          e2b  =-tmp$vectors[,2]*sqrt(c2*lam2) + xbar
          lines( c(e1a[1], e1b[1]), c(e1a[2], e1b[2]), col="blue")
          lines( c(e2a[1], e2b[1]), c(e2a[2], e2b[2]), col="blue")
      }
   }
   return(ellipse)
}
#=====================================================================


plot(x1, x2)
ellipse(S=cov(X), xbar=xbar, c2 = qchisq(0.5, df=2) )
# NOTE: only 4 observations are inside the ellipse.



