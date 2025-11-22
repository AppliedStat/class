
#================================================
# Idea on Q-Q plot

iter = 10000

x = rnorm(iter)
y = rt(iter, df=9)

par( mfrow=c(1,2))

hist(x, nclass=30)
hist(y, nclass=30)

# Q-Q plot
par( mfrow=c(1,1) )
qqplot(x,y)
abline(a=0,b=1, col="red")

# 
#================================================
# Does it belong to normal distribution (family)?
#------------------------------------------------
set.seed(1)

iter = 10000
mu = 10
sigma = 5
x = sort( rnorm(iter, mu, sigma) )
y = sort( rt(iter, df=5) )

z = qnorm( ppoints(iter) ) 
#   qnorm( (1:iter-0.5)/iter ) ### <- same as the above

qqplot(x,z)

lm(z ~ x)

abline(a=-1.9689, b=0.1975, col="red")
abline(h=0, v=0, col="green")

# shapiro.test is based on this idea. 
# The higher correlation between x and z, 
# the more likely x belongs to the normal dist.

# Let's compare y and z. 

qqplot(y,z)




