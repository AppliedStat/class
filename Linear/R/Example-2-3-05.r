#
# Example 2.3.5 on Page 112
#

A = matrix( c(1,3,2,  2,-1,3,  1,-3,1), nrow=3)
b = c(3,-1,4)

# Copy A to A1, A2, A3
A1 <- A2 <- A3 <- A

# Replace the i-th col with b
A1[,1] = b
A2[,2] = b
A3[,3] = b

# Compare A, A1, A2, A3
A; A1; A2; A3

# Find x1, x2, x3 using Cramer's rule
x1 = det(A1)/det(A)
x2 = det(A2)/det(A)
x3 = det(A3)/det(A)

c(x1,x2,x3)

x = c(x1,x2,x3)
x


# ===============================================
# Using the inverse matrix
# -----------------------------------------------
Ainv = solve(A)  
x = Ainv %*% b
x   # Matrix form
as.vector(x)


# ===============================================
# Using solve() function
# -----------------------------------------------
solve(A,b)   # Not recommended for educational purpose




