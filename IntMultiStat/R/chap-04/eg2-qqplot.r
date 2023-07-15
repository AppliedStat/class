
#--------------------------------------------
snorm = function (n, mean = 0, sd = 1) {
    if ((length(n) == 1) && (n >= 1)) {
        n <- floor(n)
        n <- seq(1, n, length = n)
    }
    else {
        n <- rank(n)
    }
    qnorm((n - 3/8)/(length(n) + 0.25), mean, sd)
}
#--------------------------------------------


## Preparation for the normal data sets
## N.B.: #4.8 and 4.9 on Page 202 
## fn = function(y) { y*dnorm(y) - pnorm(y) + 3/4} # to find cut 

cut = 1.538 

x1 = sample( snorm(1000) )
x2 = x1
x2[ abs(x1)< cut ] = -x1[ abs(x1)< cut ]

# We generated x1 and x2 data sets.
#---------------------------

S = var( cbind(x1,x2) )
round(S, 3)

qqnorm(x1)
qqline(x1, col="red")

qqnorm(x2)
qqline(x2, col="red")


## x1 and x2 are normal 
## x1 and x2 have zero covariance
## x1 and x2 are independent?  Answer is NO. 
## 

plot(x1,x2)

## Basic assumption of multivariate normal is violated

