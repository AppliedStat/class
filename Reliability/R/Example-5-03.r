# =================================
# Example 5.3 on Page 309.
# =================================

#===================================
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

x = c(600,700,1000,2000,2500,2800,3000,3100,3300,3600)

Br.test(x)


# Critical values
a = c(0.01, 0.02, 0.025, 0.05, 0.10, 0.20)

OUT = cbind(a,100*a,100*(1-a),qchisq(a/2,df=9),qchisq(1-a/2,df=9))
OUT

colnames(OUT) = c("alpha", "alpha(%)", "Coverage(%)", 
                  "lower critical", "upper critical")
OUT


#===================================
# Using weibullness package
#===================================
install.packages("weibullness")
require(weibullness)

ep.test(x)
ep.plot(x)

#
ep.plot(x^2)
ep.test(x^2)

#
ep.plot(x^3)
ep.test(x^3)

#
ep.plot(x^4)
ep.test(x^4)

