#======================================================
# Example 8.6.4 on Page 417 
#------------------------------------------------------

n = ( sqrt(3)*qnorm(0.90) - 2*qnorm(0.05) )^2 

n = ceiling(n)

#--------------------------
c=10; n=31; p=1/2 
pbinom(c, size=n, prob=p)             # Exact 
pnorm( (c+0.5-n*p)/sqrt(n*p*(1-p)) )  # Approximate with continuity correction 

c=10; n=31; p=1/4 
pbinom(c, size=n, prob=p)             # Exact 
pnorm( (c+0.5-n*p)/sqrt(n*p*(1-p)) )  # Approximate with continuity correction

c=11; n=31; p=1/2 
pbinom(c, size=n, prob=p)             # Exact 
pnorm( (c+0.5-n*p)/sqrt(n*p*(1-p)) )  # Approximate with continuity correction

c=11; n=31; p=1/4 
pbinom(c, size=n, prob=p)             # Exact 
pnorm( (c+0.5-n*p)/sqrt(n*p*(1-p)) )  # Approximate with continuity correction



