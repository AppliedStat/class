#======================================================
# Example 9.1.3 on Page 428
#   Test H0: Poisson versus H1: Multinomial 
#------------------------------------------------------
data = c(7, 4, 3, 6, 4, 4, 5, 3, 5, 3, 
         5, 5, 3, 2, 5, 4, 3, 3, 7, 6, 
         6, 4, 3,11, 9, 6, 7, 4, 5, 4, 
         7, 3, 2, 8, 6, 7, 4, 1, 9, 8,
         4, 8, 9, 3, 9, 7, 7, 9, 3,10 )
xbar = mean(data)
n = length(data)

Obs = c(13, 9, 6, 5, 7, 10)
prob =c(sum(dpois(0:3,lambda=xbar)),dpois(4:7,lambda=xbar),1-ppois(7,lambda=xbar))
Exp = n*prob

rbind(Obs, prob, Exp)   # Table 9.1-1 on Page 428

Q = sum(  (Obs-Exp)^2 / Exp  )
Q 

qchisq(1-0.05, df=4)
1-pchisq(Q, df=4)

#-----------------------------------------------------
# The below can NOT be used for this test b/c df is wrong.
# But, q (test statistics) can be used. 

chisq.test( Obs, p=prob)

