## ==========================
## Example 1.4-6 on Page 40
##  (Recall Example 1.1-1 on Page 13)
## --------------------------
date(); now <- proc.time()  ##############

# E = a set of outcomes
M = 1:6

# At least!
E = sample(1:6, replace=TRUE)
any(E == M)

# Setup for computer simulation.
N = 5000
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
(proc.time()-now)/3600;  #################

# Print the results, 
cbind(1:N, f, f/(1:N)) 

# Figure 1.1-3 on Page 13
plot(1:N, f/(1:N))

# More cosmetic
plot(f/(1:N), type="l", col="blue")
plot(1:N, f/(1:N), type="l", col="blue", ylim=0:1)
abline(h=1-(5/6)^6) 

#=========================
# Very Advanced
#-------------------------
date(); now <- proc.time()  ##############
N = 5000  # iteration 
m = 6    # 6 faced die

f = numeric(N)
M = matrix( rep(1:m, N), ncol=m, byrow=TRUE )
E = matrix( sample(1:6, size=m*N, replace=TRUE), ncol=m, byrow=TRUE )

TF1 = (E==M)
TF2 = apply( TF1, 1, any )
f   = cumsum(TF2) 
(proc.time()-now)/3600;  #################

plot(1:N, f/(1:N), type="l", col="blue", ylim=0:1)
abline(h=1-(5/6)^6)
