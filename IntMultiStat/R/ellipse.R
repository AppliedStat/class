# 
# 
# Ellipse for (xbar-mu)' Sinv (xbar-mu) < c2 
#          c2 = (p*(n-1))/(n*(n-p)) * qf(1-alpha, p, n-p)
#       or c2 = qchisq(1-alpha,df=2) / n
#
# Ellipse for (x-mu)' Sinv (x-mu) < c2 
#          c2 = (p*(n-1))/(n-p) * qf(1-alpha, p, n-p)
#       or c2 = qchisq(1-alpha,df=2) 
# 
# Usage, plot(x,y) and then use ellipse
##        plot(0,0, xlim=c(-5,5), ylim=c(-5,5), type="n")
##        ellipse(c2=5, axis=FALSE)
ellipse <- function(S=diag(c(1,1)), xbar=c(0,0), c2, resolution=100,plot=TRUE, axis=TRUE) {
   if ( ! is.matrix(S) )      stop("S should be 2x2 matrix")
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


