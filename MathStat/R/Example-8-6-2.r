#======================================================
# Example 8.6.2 on Page 414
#------------------------------------------------------

alpha = 0.025

# theta = 1 under H0
theta = 1 
critical.value = qchisq(1-alpha, df=4*theta)
critical.value 




# theta = 5 under H1
theta = 5 
1 - pchisq(critical.value, df=4*theta)



#======================================================
THETA = c(1,2,3,4,5,6,7,8,9)
POWER = 1 - pchisq(critical.value, df=4*THETA)

plot(THETA, POWER)
abline( h=alpha, col="red")




