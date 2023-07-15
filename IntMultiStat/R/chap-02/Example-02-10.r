

A = matrix( c(13,-4,2, -4,13,-2, 2, -2, 10), nrow=3)

E = eigen(A)

Q = E$vectors

lam = E$values

# N.B.: Matrix made up of eigen column-vectos is orthogonal.

OUT = Q %*% t(Q)

OUT

round(OUT, 5)


