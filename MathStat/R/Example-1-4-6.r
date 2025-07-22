
## ======================================
## Example 1.4-6 on Page 42
##  (Recall Example 1.1-1 on Page 15)
## --------------------------------------

## ======================================
## (i) Using the inclusion-exclusion formula
## --------------------------------------

p = 1/6 
choose(6,1)*p - 
choose(6,2)*p^2 + 
choose(6,3)*p^3 - 
choose(6,4)*p^4 + 
choose(6,5)*p^5 - 
choose(6,6)*p^6 

## ======================================
## (ii) Using P(B) = 1 - P(B') 
## --------------------------------------
p = 1/6

1 - (1-p)^6 


## ======================================
## (iii) Using Simulation
## --------------------------------------

# E = a set of outcomes
M = 1:6

# Toss a die.
E = sample(1:6, replace=TRUE)

# Check if there is at least one match. 
any(E == M)

# Setup for simulation.
N = 1000
f = numeric(N)
# =================
# Start: Simulation 
for ( n in 1:N ) {
    tmp = numeric(n) 
    for ( i in 1:n ) { 
        E = sample(1:6, replace=TRUE)
        tmp[i] =  any(E == M)
    }
    f[n] = sum(tmp)  
}
# End:  Simulation
# =================

# Print the results, 
cbind(1:N, f, f/(1:N)) 

# Figure 1.1-3 on Page 13
plot(1:N, f/(1:N))

# More cosmetic
plot(f/(1:N), type="l", col="blue")
plot(1:N, f/(1:N), type="l", col="blue", ylim=0:1)
abline(h=1-(5/6)^6, col="red") 

