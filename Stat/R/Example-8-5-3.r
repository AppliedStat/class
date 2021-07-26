#======================================================
# Example 8.5.3 on Page 404
#------------------------------------------------------

n = ( sqrt(3)*qnorm(0.90) - 2*qnorm(0.05) )^2 

n = ceiling(n)

#--------------------------
c=10.5; n=31; p=1/2 
pbinom(c, size=n, prob=p)         # Exact 
pnorm( (c-n*p)/sqrt(n*p*(1-p)) )  # Approximate 

c=10.5; n=31; p=1/4 
pbinom(c, size=n, prob=p)         # Exact 
pnorm( (c-n*p)/sqrt(n*p*(1-p)) )  # Approximate 

c=11.5; n=32; p=1/2 
pbinom(c, size=n, prob=p)         # Exact 
pnorm( (c-n*p)/sqrt(n*p*(1-p)) )  # Approximate 

c=11.5; n=32; p=1/4 
pbinom(c, size=n, prob=p)         # Exact 
pnorm( (c-n*p)/sqrt(n*p*(1-p)) )  # Approximate 



