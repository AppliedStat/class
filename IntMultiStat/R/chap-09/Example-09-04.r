# Example 9.4

data = read.table("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/T8-4.DAT")

R = cor(data)

p = ncol(R)

# Check p and R 
p
R

# Eigen values and vectors 
tmp = eigen(R)
evalues  = tmp$values
evectors = tmp$vectors 

Lfull = evectors %*%  diag(sqrt(evalues))  ## including all eigens

evalues 

cumsum(evalues) / sum(evalues)

# N.B.: summary(  princomp(covmat=R) )


##============================
## One factor (m=1)
##============================
m = 1

# Loading matrix with m=2 
L = Lfull[,1:m]  

L

# Communalities  with m=2
hh = diag( L %*% t(L) )

hh 


# specific variances 
Psi = 1 - hh

Psi

round(Psi,2)

Rm = L %*% t(L) + diag(Psi)

Rm

R



##============================
## Two factors (m=2)
##============================
m = 2

# Loading matrix with m=2 
L = Lfull[,1:m]  

L

# Communalities  with m=2
hh = diag( L %*% t(L) )

hh 


# specific variances 
Psi = 1 - hh

Psi

round(Psi,2)

Rm = L %*% t(L) + diag(Psi)

Rm

R


