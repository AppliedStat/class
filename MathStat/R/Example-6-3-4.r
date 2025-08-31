## ==========================
## Example 6.3-4 on Page 271
## --------------------------

data = c(
1.24, 1.36, 1.28, 1.31, 1.35, 1.20, 1.39, 1.35, 1.41, 1.31, 
1.28, 1.26, 1.37, 1.49, 1.32, 1.40, 1.33, 1.28, 1.25, 1.39,
1.38, 1.34, 1.40, 1.27, 1.33, 1.36, 1.43, 1.33, 1.29, 1.34 )

n = length(data)

i = 1:n

y = sort(data)   # sample quantile 
q = qnorm( i/ (n+1) )



cbind(i, y, i/ (n+1), q)

plot(y,q)

qqnorm(data)
qqline(data)



# ===============================
# What if the data are NOT from normal. 

data = rexp(100)  # The data are from exponential distribution. 

n = length(data)

i = 1:n

y = sort(data)   # sample quantile 
q = qnorm( i/ (n+1) )



cbind(i, y, i/ (n+1), q)

plot(y,q)

qqnorm(data)
qqline(data)



