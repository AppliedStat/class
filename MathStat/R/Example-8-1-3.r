#======================================================
# Example 8.1-3 on Page 375
#------------------------------------------------------
# H0: mu = mu0  versus H1: mu is not equal to mu0, where mu0=4
n = 9
s = 1.2
xbar = 4.3

mu0 = 4

t.stat = (xbar-mu0)/(s/sqrt(n))
t.stat 

# critical value 
alpha = 0.10 
critical.value = qt(1-alpha/2, df=n-1)
critical.value

p.value = 2 * ( 1-pt(abs(t.stat), df=n-1) )
p.value  # which is 0.4747312

#-------------------------------------------------------
# Using the interpolation
# From Table VI on Page 504, we have the following with df=n-1=8
# t_0.25 = 0.706   and  t_0.10 = 1.397. 
# We are looking for the probability, P(T > 0.75) = ?.
# Note P(T>0.706)=0.25  and P(T>1.397)=0.10.

approx( x=c(0.706,1.397), y=c(0.25,0.10), xout=0.75)

# Thus, the p.value is

2 *  0.2404486 # which is  0.4808972


