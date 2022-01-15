# Page 30


# (1)
A = matrix( c(1, 0, 2, -1, -4, -2), ncol=3)
B = matrix( c(1, 2, 1, -6,  1, -1), ncol=2)

A %*% B 
B %*% A 

# (2)
tmp = c(1, 2, -1)  # Note: it is a column vector
A = t(tmp)         # A is now a row vector

B = c(1, -1, 0)    


A %*% B
B %*% A



