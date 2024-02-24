# ==============================================================================
# File name : Rpp5.R
# Authors   : Chanseok Park and W. J. Padgett
# Version   : 1.1,   January 5, 2005
#             based on R Version 2.0.1 (2004-11-15)
#             1.2    June 14, 2018
# This progam can be freely distributed for non-commercial use. 
# ==============================================================================
 
# -----------------------------------
# pdf, cdf, MLE of Wald distribution
# -----------------------------------
 
# pdf of Wald
#
dwald <- function (x, location = 1, scale = 1) {
    k <- max(lx <- length(x), lloc <- length(location), lscale <- length(scale))
    if (lx < k) 
        x = rep(x, length = k)
    if (lloc < k) 
        location = rep(location, length = k)
    if (lscale < k) 
        scale = rep(scale, length = k)
    y = (log(abs(scale)) - log(2 * pi))/2 - 1.5 * (log(x)) - 
        scale/(2 * location^2) * ((x - location)^2/x)
    if (!is.null(Names <- names(x))) 
        names(y) <- rep(Names, length = length(y))
    return(exp(y))
}
 
# cdf of Wald
#
pwald <- function (x, location = 1, scale = 1) 
{
    k <- max(lx <- length(x), lloc <- length(location), lscale <- length(scale))
    if (lx < k) 
        x <- rep(x, length = k)
    if (lloc < k) 
        location <- rep(location, length = k)
    if (lscale < k) 
        scale <- rep(scale, length = k)
    y = pnorm( sqrt(scale/x) * (x/location - 1)) + exp(2 * scale/location) * 
        pnorm(-sqrt(scale/x) * (x/location + 1))
    if (!is.null(Names <- names(x))) 
        names(y) <- rep(Names, length = length(y))
    return(y)
}
#
# MLE of Wald (Inverse Gaussian)
#
wald.MLE <- function(x) { 
  if ( any (x <= 0) ) stop("The data should be positive")
  mu = mean(x) ; n = length(x)
  lam = 1 / ( mean(1/x) - 1/mu)
  list ( location=mu, scale=lam )
}
#
# MLE of  Weibull 
#
weibull.MLE <- function(x, interval) {
  if ( any (x <= 0) ) stop("The data should be positive")
  if (missing(interval)) {
     meanlog = mean(log(x))
     lower = 1 / ( log(max(x)) - meanlog )
     upper = sum( (x^lower)*log(x) ) / sum( x^lower ) - meanlog
     interval = c(lower,1/upper)
  }
  EE = function(alpha,x) {
     xalpha = x^alpha
     sum(log(x)*(xalpha)) / sum(xalpha) - 1/alpha - mean(log(x))
  }
  tmp = uniroot(EE, interval=interval, x=x)
  alpha = tmp$root
  list ( alpha=alpha, lam=1/mean(x^alpha) )
}

# -----------------------------------
# EM: Exponential Distribution Model
# -----------------------------------
expo.cm.EM <-
function(X, M, lam0, maxits=100, eps=1.0E-3)  {
   nk = length(X)
   J  = max(unlist(M))
   idx = unique( unlist(M) )
   jj  = idx[ idx>0 ]
   if (is.vector(M)) M <- as.list(M)
   for ( i in 1:nk )  if ( any(M[[i]]<0) )  M[[i]] = jj 
 #
 # Setting the inital values
   if ( !missing(lam0) && length(lam0) != J ) lam0 = rep(lam0,l=J)
   X0 = as.list(NULL); length(X0) = J
   n1 = numeric(J)
   if ( missing(lam0) ) {
      for ( i in 1:nk ) {
          idx = M[[i]]
          if (length(idx) == 1) {
              if ( idx > 0 ) {
                      X0[[idx]] = c(X0[[idx]], X[i])
                       n1[idx]  = n1[idx] + 1 
              } else if (idx == 0) for (j in jj) X0[[j]] = c(X0[[j]], X[i])
          }
      }
      lam0 = rep(NA, l=J)
      for ( j in jj ) {
          if ( is.null(X0[[j]]) ) {
                    lam0[j] = 1/mean(X)
          } else  { lam0[j] = 1/mean(X0[[j]]) }
      }
   }
   # end of initial value setting

   newlam =  rep(NA, l=J)
   lam = lam0
 #
 # Start the EM algorithm 
   iter <- 0
   converged <- FALSE
   sumx  = sum( X )

   while ((iter<maxits)&(!converged)){
      for ( j in jj ) {
          a = rep(0,nk)
          for ( i in 1:nk ) {
              if (any(M[[i]]==j))  a[i] = lam[j] / sum(lam[M[[i]]])
          }
          newlam[j] = sum(a) /  sumx
      }
      converged = all ( abs(newlam[jj]-lam[jj]) < eps*abs(newlam[jj]) )
      iter = iter + 1
      lam = newlam
   }
   list ( lam=newlam, iter=iter, conv=converged )
}
#
# ------------------------------
# EM: Normal Distribution Model
# ------------------------------
norm.cm.EM <-
function(X, M, mu0, sd0, maxits=100, eps=1.0E-3)  {
   nk = length(X)
   J  = max(unlist(M))
   idx = unique( unlist(M) )
   jj  = idx[ idx>0 ]
   if (is.vector(M)) M <- as.list(M)
   for ( i in 1:nk )  if ( any(M[[i]]<0) )  M[[i]] = jj 
 # 
 # Setting the inital values
   if ( !missing(mu0) && length(mu0) != J ) mu0 = rep(mu0, l=J)
   if ( !missing(sd0) && length(sd0) != J ) sd0 = rep(sd0, l=J)
   X0 = as.list(NULL); length(X0) = J
   if ( missing(mu0) ||  missing(sd0) ) {
      for ( i in 1:nk ) {
          idx = M[[i]]
          if (length(idx) == 1) {
              if ( idx > 0 ) { X0[[idx]]=c(X0[[idx]], X[i]) 
              } else if ( idx == 0 ) for (j in jj) X0[[j]] = c(X0[[j]], X[i])
          }
      }
   }
   if (  missing(mu0) ) {
      mu0 = rep(NA,J)
      for ( j in jj ) {
          if ( is.null(X0[[j]]) ) {
                    mu0[j] = mean(X)
          } else  { mu0[j] = mean(X0[[j]]) }
      }
   }
   if (  missing(sd0) ) {
      sd0 = rep(NA,J)
      for ( j in jj ) {
           if ( is.null(X0[[j]]) ) { 
               sd0[j] = sqrt( var(X) )
           } else {
               tmp =  var(X0[[j]]) 
               sd0[j] = ifelse( tmp >0, sqrt(tmp), 1)
           }
      }
   }
   # end of initial value setting

   m1 <- m2 <- array( dim=c(nk,J) )
   newmu <- newsd <- rep(NA,l=J)
   mu = mu0; sd = sd0
 #
 # Start the EM algorithm
   iter = 0
   converged = FALSE
   while ((iter<maxits)&&(!converged)){
      for ( i in 1:nk ) {
        z = (X[i]-mu[jj])/sd[jj] 
        w = exp( dnorm(z, log=TRUE) - pnorm(-z, log.p=TRUE) )
     ## w = dnorm((X[i]-mu[jj])/sd[jj]) / (1-pnorm((X[i]-mu[jj])/sd[jj]))
        m1[i,jj]= mu[jj] + sd[jj] * w
        m2[i,jj]= mu[jj]^2 + sd[jj]^2 + sd[jj]*(mu[jj]+X[i])*w
      }
      w1 = rep(NA,l=J)
      for ( j in jj ) {
          U = rep(0,nk)
          for ( i in 1:nk ) {
              if (any(M[[i]]==j)) {
                 z = (X[i]-mu[jj])/sd[jj] 
                 w1[jj] = exp( dnorm(z, log=TRUE) - pnorm(-z, log.p=TRUE) )
              ## w1[jj] = dnorm((X[i]-mu[jj])/sd[jj]) /
              ##            ( 1-pnorm((X[i]-mu[jj])/sd[jj]) )
                 U[i] = (w1[j]/sd[j]) / sum(w1[M[[i]]] /sd[M[[i]]] )
              }
          }
          newmu[j] = mean( U*X + (1-U)*m1[,j] )
          tmp      = mean( U*X^2 + (1-U)*m2[,j] ) - newmu[j]^2
          newsd[j] = sqrt(tmp)
      }
      iter = iter + 1
      conv1 = all ( abs(newmu[jj]-mu[jj]) < eps*abs(newmu[jj]) )
      conv2 = all ( abs(newsd[jj]-sd[jj]) < eps*abs(newsd[jj]) )
      converged = conv1 && conv2 
      mu = newmu; sd = newsd
   }
   list ( mu=newmu, sd=newsd, iter=iter, conv=converged ) 
}
 
# ----------------------------
# EM: Wald Distribution Model
# ----------------------------
wald.cm.EM <-
function(X, M, mu0, lam0, maxits=100, eps=1.0E-3)  {
   nk = length(X)
   J  = max(unlist(M))
   idx = unique( unlist(M) )
   jj  = idx[ idx>0 ]
   if (is.vector(M)) M <- as.list(M)
   for ( i in 1:nk )  if ( any(M[[i]]<0) )  M[[i]] = jj 
 # 
 # Setting the inital values
   if ( !missing(mu0)  && length(mu0)  != J )  mu0 = rep( mu0, l=J)
   if ( !missing(lam0) && length(lam0) != J ) lam0 = rep(lam0, l=J)
   X0 = as.list(NULL); length(X0) = J
   if ( missing(mu0) ||  missing(lam0) ) {
      for ( i in 1:nk ) {
          idx = M[[i]]
          if (length(idx) == 1) {
              if ( idx > 0 ) { X0[[idx]]=c(X0[[idx]], X[i]) 
              } else if ( idx == 0 ) {
                     for ( j in jj ) X0[[j]] = c(X0[[j]], X[i]) }
          }
      }
   }
   if  (  missing(mu0) ||  missing(lam0) ) { 
       mu00 = lam00 = rep(NA,J)
       for ( j in jj ) {
           if ( is.null( X0[[j]] ) ) {
                    tmp = wald.MLE ( X )
           } else { tmp = wald.MLE ( X0[[j]] ) }
           mu00[j] = ifelse(tmp$location>0, tmp$location, 1)
          lam00[j] = ifelse(tmp$scale>0,    tmp$scale,    1)
       }
   }
   if (  missing(mu0) )   mu0 = mu00 
   if (  missing(lam0) ) lam0 = lam00
   # end of initial value setting

   newmu <- newlam <- rep(NA,l=J)
   mu = mu0; lam = lam0
 #
 # Start the EM algorithm
   iter = 0
   converged = FALSE
   fz <- function(z, location, scale, xx) {
            dwald(z, location, scale) / (1-pwald(xx, location,scale))
   }
   fB <- function(z, location, scale, xx) {
        z * dwald(z, location, scale) / (1-pwald(xx, location,scale))
   }
   fC <- function(z, location, scale, xx) {
        1/z*dwald(z, location, scale) / (1-pwald(xx, location,scale))
   }
   while ((iter<maxits)&&(!converged)){
      U = array(0, dim=c(nk,J) )
      for ( j in jj ) {
          for ( i in 1:nk ) {
              if (any(M[[i]]==j)) {
                 tmp =  fz(X[i],location=mu[M[[i]]],scale=lam[M[[i]]],xx=X[i])
                 U[i,j]= fz(X[i],location=mu[j],scale=lam[j],xx=X[i])/sum(tmp)
              }
          }
      }
      mB <- mC <- array(0, dim=c(nk,J) )
      for ( i in 1:nk ) {
         for ( j in jj ) {
             if (U[i,j]  < 1) {
               mB[i,j]=integrate(fB, lower=X[i], upper=Inf, stop.on.error=FALSE,
                                 location=mu[j], scale=lam[j], xx=X[i])$value
               mC[i,j]=integrate(fC, lower=X[i], upper=Inf, stop.on.error=FALSE,
                                 location=mu[j], scale=lam[j], xx=X[i])$value
             }
         }
      }
      for ( j in jj ) {
          newmu[j] = mean( U[,j]*X + (1-U[,j])*mB[,j] )
          tmp      = mean( U[,j]/X + (1-U[,j])*mC[,j] ) - 1/newmu[j]
          newlam[j] = 1 / tmp
      }
      iter = iter + 1
      conv1 = all ( abs(newmu[jj] -mu[jj])  < eps*abs(newmu[jj]) )
      conv2 = all ( abs(newlam[jj]-lam[jj]) < eps*abs(newlam[jj]) )
      converged = conv1 && conv2 
      mu = newmu; lam = newlam
      cat(".")
   }
   cat("\n * Done *\n\n")
   list ( mu=newmu, lam=newlam, iter=iter, conv=converged )
}
 
# -------------------------------
# EM: Weibull Distribution Model
# -------------------------------
weibull.cm.EM <-
function(X, M, alpha0, lam0, maxits=100, eps=1.0E-3)  {
   nk = length(X)
   J  = max(unlist(M))
   idx = unique( unlist(M) )
   jj  = idx[ idx>0 ]
   if (is.vector(M)) M <- as.list(M)
   for ( i in 1:nk )  if ( any(M[[i]]<0) )  M[[i]] = jj 
 #
 # Setting the inital values
   if ( !missing(alpha0)&&length(alpha0)!=J ) alpha0 = rep(alpha0,l=J)
   if ( !missing(lam0)  && length(lam0) !=J )   lam0 = rep(lam0,  l=J)
   X0 = as.list(NULL); length(X0) = J
   n1 = numeric(J)
   if ( missing(alpha0) || missing(lam0) ) {
      for ( i in 1:nk ) {
          idx = M[[i]]
          if (length(idx) == 1) {
              if ( idx > 0 ) {
                      X0[[idx]] = c(X0[[idx]], X[i])
                       n1[idx]  = n1[idx] + 1 
              } else if (idx == 0) for (j in jj) X0[[j]] = c(X0[[j]], X[i])
          }
      }
    }
    if  (  missing(alpha0) ||  missing(lam0) ) {
        alpha00 = lam00 = numeric(J)
        for ( j in jj ) {
           if ( is.null( X0[[j]] ) ) {
                    tmp = weibull.MLE ( X )
           } else { tmp = weibull.MLE ( X0[[j]] ) }
            alpha00[j] = tmp$alpha 
              lam00[j] = tmp$lam 
        }
   }
   if (  missing(alpha0) ) alpha0 = alpha00
   if (  missing(lam0) )     lam0 = lam00
   # end of initial value setting

   newlam <- newalpha <- rep(NA, l=J)
   lam   = lam0 ;  alpha = alpha0
 #
 # Start the EM algorithm 
   iter <- 0
   converged <- FALSE
   sumx  = sum( X )
   EE2 = function(alpha,x,U) {
       xalpha = x^alpha
       sumU = sum(U)
       sumU*sum(xalpha*log(x))/sum(xalpha)-sumU/alpha-sum(U*log(x))
   }
   while ((iter<maxits)&(!converged)){
      for ( j in jj ) {
          U = rep(0,nk)
          for ( i in 1:nk ) {
              if (any(M[[i]]==j)) {
                 tmp  = alpha[M[[i]]]*lam[M[[i]]]*X[i]^(alpha[M[[i]]]-1) 
                 U[i] = alpha[j]*lam[j]*X[i]^(alpha[j]-1) / sum(tmp)
              }
          }
           sumU = sum(U)
          lower = sumU / sum( U*(log(max(X))-log(X)) ) 
            tmp = sumU*sum(X^lower * log(X))/sum(X^lower) - sum(U*log(X))
          upper = max( abs(sumU/tmp), lower )
          while ( EE2(lower,X,U)*EE2(upper,X,U) > 0 ) {
             upper = 2 * upper
          }
          tmp = uniroot(EE2, interval=c(lower,upper),x=X, U=U)
          newalpha[j] = tmp$root 
          newlam[j]   = sumU / sum(X^newalpha[j])
      }
      iter = iter + 1
      conv1 = all ( abs(newalpha[jj]-alpha[jj]) < eps*abs(newalpha[jj]) )
      conv2 = all ( abs(newlam[jj]  -  lam[jj]) < eps*abs(newlam[jj]) )
      converged = conv1 && conv2 
      lam = newlam ;  alpha = newalpha 
   }
   list ( alpha=newalpha, lam=newlam, iter=iter, conv=converged )
}

# -------------------------------
# Reparametrization of Weibull Distribution Model
# -------------------------------
# For Elsayed definition of Weibull pdf
# Convert alpha (shape) and lam (rate) to alpha (shape) and beta (scale).
Reparametrization = function(alpha, lam) {
    lambda = lam^(1/alpha)
    beta   = 1/lambda
    list(alpha=alpha, beta=beta)
}
