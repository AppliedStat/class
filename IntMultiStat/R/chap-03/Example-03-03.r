# Example 3.3 on Page 115

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


# We can find d2 similarly to d1 
