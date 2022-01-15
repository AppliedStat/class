## ==========================
## Example 2.1-7 on Page 54 
## --------------------------
out =  rep( 2:8, c(71,124,194,258,177,122,54) ) 

table(out)

hist(out)  # Different from textbook

# Histogram
hist(out, breaks=seq(0.5,8.5,by=1) ) # slightly different

# Relative frequency histogram 
hist(out, breaks=seq(0.5,8.5,by=1), prob=T ) # 

#-----------------------------
# Theoretical pmf
x = 2:8
pmf = (4-abs(x-5))/16 

# Let's check pmf
pmf > 0 
sum(pmf)

#-----------------------------
# Relative frequency histogram with pmf 
hist(out, breaks=seq(0.5,8.5,by=1), prob=T ) 
lines(x, pmf, type="h", col="red", lwd=10)

#-----------------------------
# Table 2.1-1
obs = table(out)
cbind(obs, obs/length(out), pmf)

#===========================================
# How is actually the textbook example made 
#--------------------------------------------
N = 1000   # We can also try N=100000

x1 = sample(1:4, size=N, replace=TRUE) 
x2 = sample(1:4, size=N, replace=TRUE)

out = x1+x2
hist(out, breaks=seq(0.5,8.5,by=1) )  # N.B: triangle shape.

# Continuous analogy  
x1 = runif(N)
x2 = runif(N)

out = x1+x2 
hist(out)
