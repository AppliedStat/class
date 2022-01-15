## ==========================
## Example 1.1-1 on Page 13 
##  (same as Example 1.4-6 on Page 40)
## --------------------------

# E = a set of outcomes
# M = 1:6
M = 1:6

# At least ! 
E = sample(1:6, replace=TRUE)
any(E == M)

# Setup for computer simulation.
N = 500
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
abline(h=1-(5/6)^6) 
