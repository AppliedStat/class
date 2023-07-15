# Example 9.11 on Page 511  (revisit Example 9.6 on Page 499)

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

Lstar = varimax(L)$loadings 

Lstar # essentially same numbers, but different order of columns 


# Proportional of total sample variance explained 

pro.tot.var = colSums( Lstar^2 ) / sum( Lfull^2 )

pro.tot.var

cumsum(pro.tot.var)

# Sorting based on the pro.tot.var 

index = order( pro.tot.var, decreasing=TRUE )
pro.tot.var[index]


pto.tot.var2 = pro.tot.var[index]
Lstar2 = Lstar[, index]

# now sorted based on the pro.tot.var 
pto.tot.var2
Lstar2 

# Let's find Proportional of total sample variance explained again using these sorted ones 

pro.tot.var2 = colSums( Lstar2^2 ) / sum( Lfull^2 )

pro.tot.var2

cumsum(pro.tot.var2)

round( cumsum(pro.tot.var2), 2 )  ## Now, this is the same as the textbook result 


# ========================================
# MLE method 
# ----------------------------------------

# Rotating is easier with MLE becaseu R has factanal with "varimax" option. 

OUT = factanal(covmat=R, factors=4, rotation="varimax")

OUT

loadings(OUT)    # or OUT$loadings


