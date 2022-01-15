#
# Example 2.3.4 on Page 111
#

A = matrix( c(2,1, 9,-3), nrow=2)


# Using adj(A)
Ainv = solve(A)
det(Ainv)


# Using Theorem 2.3.6 on Page 110
det(A)
1 / det(A)



