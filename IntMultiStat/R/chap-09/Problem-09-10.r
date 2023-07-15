# Exercise 9.10 on Page 532  

p = 6; R = matrix( ncol=p, nrow=p)

# Type data on Page 491
 R[lower.tri(R)] = c(.505, .569, .602, .621, .603,       .422, .467, .482, .450, 
                     .926, .877, .878,    .874, .894,    .937)

# Make R (corr) matrix from the above data.
 diag(R) = 1
 R[ upper.tri(R) ] =   t(R)[ upper.tri(R) ]

# Check R

R


# ========================================
# MLE method 
# ----------------------------------------

# Rotating is easier with MLE becaseu R has factanal with "varimax" option. 

OUT = factanal(covmat=R, factors=2, rotation="none")

OUT

loadings(OUT)    # or OUT$loadings

#--------------------------------------------

OUT = factanal(covmat=R, factors=2, rotation="varimax")

OUT

loadings(OUT)    # or OUT$loadings


# ========================================
# MLE method  (Using the textbook result)
# ----------------------------------------

# No rotation 

L1 = c(0.602, .467, .926, 1, .874, .894)
L2 = c(0.200, .154, .143, 0, .476, .327)

L = cbind(L1, L2)

h2 = rowSums( L^2 )
psi = 1 - h2

#---------

lam = colSums( L^2 )

lam / 6

cumsum(lam) / 6


R - L %*% t(L) - diag(psi)


# After varimax rotation 

L1 = c(.484,  .375,  .603,  .519,  .861,  .744)
L2 = c(.411,  .319,  .717,  .855,  .499,  .594)

L = cbind(L1, L2)

h2 = rowSums( L^2 )
psi = 1 - h2

cbind(psi, h2)

#---------

lam = colSums( L^2 )

lam / 6

cumsum(lam) / 6


R - L %*% t(L) - diag(psi)




