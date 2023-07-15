# Example 4.16 on Page 194 

data = read.table("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/T4-1.DAT")
x = as.vector(data[[1]])  ## N.B.: data is list structure. 

# Q-Q plot
qqnorm (x)
qqline(x) # cosmetic 


# Box-Cox Transform 

boxcox.m <- function( x, lambda = seq(-2,2,1/10) ) {
  n = length(x)
  nL = length(lambda)
  l  = numeric(nL)
  for ( i in 1:nL) {
      if ( abs(lambda[i]) > 0.001 ) {
         y  = (x^lambda[i]-1) / lambda[i] 
      } else {
         y  = log(x)
      }
      l[i] = -0.5*n*log((n-1)/n * var(y)) + (lambda[i]-1)*sum(log(x))
   }
   return(l)
}

lambda = seq(0,0.5,length=100)

l = boxcox.m(x, lambda)

plot(lambda,l, type="l")


#=======================================
## Let's use lambda = 1/4 = 0.25 

y = x^(0.25)


# Q-Q plot
qqnorm (y)
qqline(y) # cosmetic



## Only for comparison
dev.off() 
par( mfrow=c(1,2) )

qqnorm (x); qqline(x) 

qqnorm (y); qqline(y) 


