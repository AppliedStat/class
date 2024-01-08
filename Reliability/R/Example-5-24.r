# =================================
# Example 5.24 on Page 317.
# =================================

X = c(20, 28, 35, 39, 42, 44, 46, 47)
n = length(X)
LX = log(X)

mu.hat = mean(LX)

s2.hat = var(LX)

sigma2.hat = (n-1)/n*var(LX)


