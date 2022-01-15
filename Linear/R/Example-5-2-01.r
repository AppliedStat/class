# Example 5.2.1 on Page 294
# (See # Example 5.1.3 on Page 274)

A = matrix( c(3,-2,0,  -2,3,0,  0,0,5), ncol=3 )
eigen(A)$values


#=============================
p1 = c(-1, 1, 0)  # lambda1 = 5
p2 = c( 0, 0, 1)  # lambda1 = 5
p3 = c( 1, 1, 0)  # lambda2 = 1

P = cbind(p1, p2, p3)

D = solve(P) %*% A %*% P
D 


#=============================
p1 = c(-1, 1, 0)  # lambda1 = 5
p2 = c( 0, 0, 1)  # lambda1 = 5
p3 = c( 1, 1, 0)  # lambda2 = 1

# Let's change the order of p1, p2, p3
P = cbind(p1, p3, p2)

D = solve(P) %*% A %*% P
D    # The values on the diagonal are different (different orders)


#=============================
# Let's normalize p1, p2, p3
# (note: R reports normalized version of p1, p2, p3)
p1 = c(-1, 1, 0)/sqrt(2)  # lambda1 = 5
p2 = c( 0, 0, 1)          # lambda1 = 5
p3 = c( 1, 1, 0)/sqrt(2)  # lambda2 = 1

# Let's change the order of p1, p2, p3
P = cbind(p1, p2, p3)

D = solve(P) %*% A %*% P
D    # The same D after normalizing p1, p2, p3




