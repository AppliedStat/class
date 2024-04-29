# =================================
# Example 4.18 on Page 276.
# =================================

x = c(14,18,18,20,21,22,22,20,17,17,15,13)

muhat = mean(x)
s2 = var(x)

n = length(x)
sigma2 = sum( (x-muhat)^2 ) / n 

Iinvhat = diag( c(sigma2/n, sigma2/(2*n)) )

