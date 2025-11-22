## ==========================
## Example 7.1.5 on Page 321
## --------------------------
x = c( 481, 537, 513, 583, 453, 510, 570, 500, 457, 555,
       618, 327, 350, 643, 499, 421, 505, 637, 599, 392 )

xbar = mean(x) 

s2 = var(x)

s = sqrt(var(x))

sd(x)

n = length(x)

alpha = 1-0.90   # 90% CI.

t = qt (1-alpha/2, df=n-1) 

L = xbar - t * s/sqrt(n) 
U = xbar + t * s/sqrt(n) 
c(L,U)


#============================================================
# We can also use  t.test() function in R.
t.test(x, conf.level=0.90)

#============================================================
# We can also use  lm() function as below.
mylm = lm(x~1)
confint(mylm, level=0.90)

#==============================================================
# NOTE: t.test and lm functions are based on t-distribution.
#  The t.test and lm functions can not be used for Examples 7.1.3 and 7.1.4 
#   which are based on the normal distribution. 
#--------------------------------------------------------------


