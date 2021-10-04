
# ===========
# Example 1
# ===========
iter = 10000

X1 = runif(iter)
hist(X1)

# What is the distribution of (X1+X2), or (X1+X2)/2? 
X2 = runif(iter)

hist( (X1+X2) )
hist( (X1+X2)/2 )


# What is the distribution of (X1+X2+X3), or (X1+X2+X3)/3? 
X3 = runif(iter)

hist( (X1+X2+X3) )
hist( (X1+X2+X3)/3 )

# What is the distribution of the mean of Xi?
X4 = runif(iter)
X5 = runif(iter)
X6 = runif(iter)
X7 = runif(iter)
X8 = runif(iter)
X9 = runif(iter)
X10= runif(iter)

hist( (X1+X2+X3+X4+X5+X6+X7+X8+X9+X10)/10 )
hist( (X1+X2+X3+X4+X5+X6+X7+X8+X9+X10)/10, nclass=30 )


# ===========
# Example 2
# ===========
iter = 10000

X1 = rexp(iter)
hist(X1)

# What is the distribution of (X1+X2)/2? 
X2 = rexp(iter)

hist( (X1+X2)/2 )

X3 = rexp(iter)
X4 = rexp(iter)
X5 = rexp(iter)
X6 = rexp(iter)
X7 = rexp(iter)
X8 = rexp(iter)
X9 = rexp(iter)
X10= rexp(iter)

# What is the distribution of the mean of Xi?
hist( (X1+X2+X3+X4+X5+X6+X7+X8+X9+X10)/10 )
hist( (X1+X2+X3+X4+X5+X6+X7+X8+X9+X10)/10, nclass=30 )

