

A = matrix( c(1, -5, -5, 1), nrow=2 )


E = eigen(A)

E

E$values

lam = E$values
lam[1]
lam[2]

# Or
lam1 = E$values[1]
lam2 = E$values[2]

# N.B.: Eigen vectors are stored column-wise

e1 = E$vectors[,1]
e2 = E$vectors[,2]

# The following will give wrong eigen vectors

f1 = E$vectors[1,]
f2 = E$vectors[2,]


