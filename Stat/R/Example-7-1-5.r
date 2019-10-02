## ==========================
## Example 7.1.5 on Page 313
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

#==============================================================
# NOTE: 
#  The following methods can not be used for Examples 7.1.3 and 7.1.4 
#  because they are based on N(0,1) while Example 7.1.5 is based on t-dist. 
#--------------------------------------------------------------


#==============================================================
# Usint t.test() function 
t.test(x, conf.level=0.90)


#------------------------------------------------------------
# Using lm() function
mylm = lm(x~1)
confint(mylm, level=0.90)
