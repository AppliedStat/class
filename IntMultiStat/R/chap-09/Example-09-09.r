# Example 9.9 on Page 508 (Revisit Example 9.3)
#     Factor Analysis using Eigen...

p = 5
R = matrix( ncol=p, nrow=p)

# Type data: 
 R[ upper.tri(R) ]  = c(.02,   .96, .13,    .42, .71, .50,   .01, .85, .11, .79) 

# Make R (corr) matrix from the above data. 
 diag(R) = 1
 R[ lower.tri(R) ] =   t(R)[ lower.tri(R) ] 

# Check R

R

# Eigen values and vectors 
tmp = eigen(R)
evalues  = tmp$values
evectors = tmp$vectors 

Lfull = evectors %*%  diag(sqrt(evalues))  ## including all eigens

# consider only two factors 
m = 2

# Loading matrix with m=2 
L = Lfull[,1:m]  

# Communalities  with m=2
hh = diag( L %*% t(L) )
hh 

round(hh,2)

# specific variances 
Psi = 1 - hh

Psi


#------------------------------------
# Rotate the above L using varimax method 
 varimax(L)
