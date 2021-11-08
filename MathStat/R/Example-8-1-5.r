#======================================================
# Example 8.1-5 on Page 369
#------------------------------------------------------
# H0: mu = mu0  versus H1: mu > mu0, where mu0=0
# W = X-Y

# W are observed as below:
w = c(
 0.28,  0.01, 0.13, 0.33, -0.03,  0.07, -0.18, -0.14,
-0.33,  0.01, 0.22, 0.29, -0.08,  0.23,  0.08,  0.04,
-0.30, -0.08, 0.09, 0.70,  0.33, -0.34,  0.50,  0.06) 

n = length(w)
n

wbar = mean(w)
s = sd(w)

mu0 = 0

t.stat = (wbar-mu0)/(s/sqrt(n))
t.stat 

#
alpha1 = 0.05

critical.value1 = qt(1-alpha1, df=n-1)
critical.value1

#
alpha2 = 0.10

critical.value2 = qt(1-alpha2, df=n-1)
critical.value2

# Summary
# t.stat = 1.513382
# Thus, critical.value2 < t.stat < critical.value1.
# Then we can postulate that p.value is between 0.05 and 0.10. 

# p.value 
#------------------------------------
# We can also calculate exact p-value  
#------------------------------------
p.value =  1-pt(t.stat, df=n-1) 
p.value  # which is 0.07190197


#======================================================
# If one really wants to use an interpolation, 
#     one can use two critical values and two significance levels.
#------------------------------------------------------
approx( x=c(critical.value1,critical.value2), y=c(alpha1,alpha2), xout=t.stat)




