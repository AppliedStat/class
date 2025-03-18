## ==========================
## Example 2.4-7 on page 75 
## --------------------------

# P( X <= 8 )
 pbinom (8, size=10, prob=0.8) 

# P( X <= 8 ) = 1 - P(X=9) - P(X=10)  
 1-dbinom(9,size=10,prob=0.8)-dbinom(10,size=10,prob=0.8)

# P( X <= 6 )
 pbinom (6.0, size=10, prob=0.8) 
 pbinom (6.1, size=10, prob=0.8) 
 pbinom (6.4, size=10, prob=0.8) 
 pbinom (6.7, size=10, prob=0.8) 
 pbinom (6.9, size=10, prob=0.8) 

 pbinom (7.0, size=10, prob=0.8) 

# -------------------------------------------------
# Figure 2.4-2 on Page 77
x = 0:10
cdf = c(0, pbinom(x, size=10, prob=0.8) )
Fx = stepfun(x, cdf)
plot(Fx, vertical=FALSE, pch=20, col="blue", ylab="F(x)" )

# The above is better. But the below is easier. 
xx = seq(0, 10, by = 0.1) 
Fxx = pbinom(xx, size=10, prob=0.8)
plot(xx, Fxx,  type="l")

