# Example 3.1 

X = matrix( c(4,-1,3, 1,3,5), ncol=2 )


# apply 
apply(X, 2, mean)


# Note: Different results 
apply(X, 2, exp)
exp(X)

apply(X, 2, sin)
sin(X)

# Note: The same results 
apply(X, 2, sum)
sum(X)

apply(X, 2, prod)
prod(X)


# 
# colSums/colMeans rowSums/rowMeans  (New function)
# 

colMeans(X)  # Taking the mean column-wise. 

rowMeans(X)





