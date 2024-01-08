# Chapter 4: Efficiency concept

# Efficiency: mean vs. median 
# In theory, var(xbar) = sigma^2/n. Then var(xmedian)=? 

iteration = 10000
n = 10

#---------------------------------------
xbar <- xmed <- numeric(iteration)
for ( i in 1:iteration ) { 
    x = rnorm(n) 
    xbar[i] = mean(x) 
    xmed[i] = median(x) 
}
#---------------------------------------

# Compar var(xbar) and var(xmed) 

var(xbar) 

var(xmed)



