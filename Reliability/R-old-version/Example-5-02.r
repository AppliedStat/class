# =================================
# Example 5.2 on Page 280.
# =================================

# Bartlett's test for exponentiality 
Br.test0 <- function(x) {
   r = length(x) 
   M = mean(x)
  lM = mean(log(x))
  Br = 2*r*(log(M)-lM) / (1+(r+1)/6/r)
   return( Br )
}

#-----------------------------------
# Data 
x = c(200,   400,  2000,  6000,  9000, 
    13000, 20000, 24000, 26000, 29000,
    32000, 34000, 36000, 39000, 42000, 
    43000, 48000, 50000, 54000, 60000 )
Br.test0(x)

# Compare the above with critical values
r = length(x) 
alpha = 0.10
c(qchisq(alpha/2, df=r-1), qchisq(1-alpha/2, df=r-1) )

(Br.test0(x) > qchisq(alpha/2,df=r-1)) && (Br.test0(x)<qchisq(1-alpha/2,df=r-1))

#===================================
# Advanced (cosmetics) 
# Idea: shapiro.test
# "p.value > alpha" implies exponential
Br.test <- function(x) {
   r = length(x)
   M = mean(x)
  lM = mean(log(x))
  Br = 2*r*(log(M)-lM) / (1+(r+1)/6/r)
pval = 2*min(1-pchisq(Br,df=r-1), pchisq(Br,df=r-1) )

   DNAME <- deparse(substitute(x))
   RVAL = list(statistic=c(Br=Br), p.value=pval, sample.size=r, df=r-1,
        method="Bartlett's test for exponentiality", data.name = DNAME)
    class(RVAL) <- "htest"
    return(RVAL)
}
#===================================


Br.test(x)

# Recall the original naive function
Br.test0(x)

