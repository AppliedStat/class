# Example 3.11 on Page 136

S = matrix( c(4,3,1, 3,9,2, 1,2,1), ncol=3)

R = cov2cor(S)


det(S)

det(R)

# Check 

prod(diag(S)) * det(R) 







