
#======================================================
# Example 9.1.1 on Page 425
#   Test H0: random versus H1: not random
#------------------------------------------------------
data = c(5,8,3,1,9,4,6,7,9,2,6,3,0,
         8,7,5,1,3,6,2,1,9,5,4,8,0,
         3,7,1,4,6,0,4,3,8,2,7,3,9,
         8,5,6,1,8,7,0,3,5,2,5,2)
dist = abs( diff(data) )
length(data)

# Check "SAME"
sum( dist==0 )        # dangerous
sum( dist < 0.001 )   # better

# for example.
tmp = rep(1,10) + 1E-11
tmp 
tmp == 1

# Check One away 
sum( dist==1 | dist==9 )                     # dangerous
sum( abs(dist-1)<0.001 | abs(dist-9)<0.001 ) # better 

# Check Other 
sum(  (dist-1)>=0.001 )                      # not good (actually wrong)
sum(  (dist-1)>=0.001 & abs(dist-9)>=0.001 ) # better 

#------------------------------------------------------
y1=0;     y2=8;     y3=42
p10=1/10; p20=2/10; p30=7/10
n = y1+y2+y3

Q2 = (y1-n*p10)^2 / (n*p10) + (y2-n*p20)^2 / (n*p20) + (y3-n*p30)^2 / (n*p30)
Q2 

# chi-square critical value
qchisq(1-0.05, df=2)

# Compare Q2 with the above critical value
# Conclusion:  Reject H0 

#======================================================
# Using R function
chisq.test( x=c(0,8,42),  p=c(1/10, 2/10, 7/10) )


#------------------------------------------------------
# Note 
O =   c(y1,  y2,  y3)
E = n*c(p10, p20, p30)

sum( (O-E)^2 / E )

