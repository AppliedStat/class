# Example 3.4 on Page 117

X = matrix( c(4,-1,3, 1,3,5), ncol=2 )

y1 = X[,1]
y2 = X[,2]

# Let's find d1, d2.

d1 = y1 - mean(y1)*c(1,1,1)
d1

d1 = y1 - mean(y1)*rep(1,3)
d1

# Note: y1 = a vector. mean(y1) = a scalar 
d1 = y1 - mean(y1)
d1

# d2
d2 = y2 - mean(y2)
d2

##  sq. norm of d1, d2 and <d1,d2>, r etc...

sum(d1*d1)

sum(d2*d2)

sum(d1*d2)

sum(d1*d2) / sqrt( sum(d1*d1) * sum(d2*d2) )

##=====================
## what if p is large, say p = 10? Repeat the above???

## R has cor function


cor(X)


