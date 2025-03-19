
#==========================================
# QQ plot for normal distribution

n = 1000
x = rnorm(n)

pi = (1:n-0.5) / n 

yi = qnorm(pi)

xi = sort(x)

plot(yi,xi)

# using qqnorm function
qqnorm(x)

#-----------------------------------------
# What if x is not from normal  (uniform)

x = runif(n)


pi = (1:n-0.5) / n

yi = qnorm(pi)

xi = sort(x)

plot(yi, xi)

# using qqnorm function
qqnorm(x)


#-----------------------------------------
# What if x is not from normal  (weibull)

x = rweibull(n, 2, 1)

pi = (1:n-0.5) / n

yi = qnorm(pi)

xi = sort(x)

plot(yi, xi)

# using qqnorm function
qqnorm(x)


#==========================================
# Weibull plot

x = rweibull(n, 2, 1)
xi = sort(x)

pi = (1:n-0.5) / n

vi = log(-log(1-pi)) 
ui = log (xi)

plot(ui,vi)




