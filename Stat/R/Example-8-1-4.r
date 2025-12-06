#======================================================
# Example 8.1-4 on Page 376 
#------------------------------------------------------
# H0: mu = mu0 versus H1: mu < mu0,  where mu0 = 500.
#

n = 25
s = 115.15
xbar = 308.8 

mu0 = 500

t.stat = (xbar-mu0)/(s/sqrt(n))
t.stat 

# critical value 
alpha = 0.01
critical.value = qt(1-alpha, df=n-1)
-critical.value   # NB: qt(alpha, df=n-1) 

#------------------------------------
# Compare t.stat vs. critical.value
#------------------------------------
#  Clearly, t.stat << critical.value 
#  Thus, reject H0

#------------------------------------
# We can also calculate p-value 
#------------------------------------
p.value =  pt(t.stat, df=n-1) 
# or 1-pt(abs(t.stat), df=n-1) 
p.value  # which is 8.134969e-09 

# p.value is much smaller than alpha.
#   Thus, we can reject H0


# The one-sided 99% CI for mu 
c(-Inf, xbar + critical.value * s / sqrt(n) )

# By context, xi are positive. Thus, the CI below is better. 
c(0,  xbar + critical.value * s / sqrt(n) )


