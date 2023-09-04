x1 = c(1,2,1)
x2 = c(1,0,-1)
x3 = c(1,-2,1)

A = cbind(x1, x2, x3)


# Solve for c1, c2, c3
solve(A) %*% c(0,0,0) 
solve(A, c(0,0,0) )

# Find the determinant of A
det(A)





