## ==========================
## Example 7.1-3 on Page 319
## --------------------------

xbar = 133 

sigma = 96

n = 576

alpha = 1-0.90   # 90% CI.

z = qnorm (1-alpha/2) 

L = xbar - z * sigma/sqrt(n) 
U = xbar + z * sigma/sqrt(n) 

c(L,U)
