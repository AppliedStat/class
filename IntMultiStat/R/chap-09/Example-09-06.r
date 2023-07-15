# Example 9.6 on Page 499 

data = read.table("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/E9-6.DAT")
R = data.matrix(data)

# ========================================
# Eigen values and vectors 
# ----------------------------------------
tmp = eigen(R)
evalues  = tmp$values
evectors = tmp$vectors

Lfull = evectors %*%  diag(sqrt(evalues))  ## including all eigens
evalues
cumsum(evalues) / sum(evalues)
L = (-1)* Lfull[, 1:4]

# Communalities  with m=4
hh = diag( L %*% t(L) )

hh

# specific variances
Psi = 1 - hh

round(Psi,2)

# 
sum( Lfull^2 )  # why is it 10? (See diagonal sum of R)

pro.tot.var = colSums( L^2 ) / sum( Lfull^2 )

pro.tot.var

cumsum(pro.tot.var)

# N.B. summary( princomp(covmat=R) ) 


# ========================================
# MLE method 
# ----------------------------------------

OUT = factanal(covmat=R, factors=4, rotation="none")

OUT

L = loadings(OUT)    # or OUT$loadings

# N.B: Compare OUT with the following

colSums( L^2 ) / sum( Lfull^2 )
cumsum ( colSums( L^2 ) / sum( Lfull^2 ) )

# N.B.: Compare the following with OUT$uniqueness  (specifile variance)
 1 - rowSums( L^2 )

