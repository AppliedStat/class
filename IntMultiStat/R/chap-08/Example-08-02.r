# Example 8.2 on Page 437 

Sigma = matrix( c(1, 4, 4, 100), nrow=2)

Rho = cov2cor(Sigma)

tmp = eigen(Sigma)

e1 = tmp$vectors[,1]
e2 = tmp$vectors[,2]

e1
e2

eigenvalues = tmp$values
eigenvalues[1] / sum(eigenvalues)

# 

tmp = eigen(Rho)

e1 = tmp$vectors[,1]
e2 = tmp$vectors[,2]

e1
e2

eigenvalues = tmp$values
eigenvalues[1] / sum(eigenvalues)


