# Example 3.12 on Page 137

S = matrix(c(252.04, -68.43, -68.43, 123.67), ncol=2) # Example 3.07 on Page 124
sum( diag(S) ) 


X = matrix(c(1,4,4, 2,1,0, 5,6,4), ncol=3)            # Example 3.09 on Page 130
S = cov(X)
sum( diag(S) ) 


# =======================
# Extra
# =======================

# When S = matrix(c(252.04, -68.43, -68.43, 123.67), ncol=2)
# When S = cov( matrix(c(1,4,4, 2,1,0, 5,6,4), ncol=3) )

# Compare sum( diag(S) ) with sum( eigen(S)$values )
sum( diag(S) )
sum( eigen(S)$values )

# Compare det(S) with prod( eigen(S)$values )
det(S)
prod( eigen(S)$values )



