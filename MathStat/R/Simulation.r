#==========================================================
# (1) Estimation of the probability
#==========================================================
# R Code for tossing a fair die
set.seed(1)
ITER = 10000  # The larger, the better
x = sample(1:6, size=ITER, replace=TRUE)
table(x) / ITER


# R Code for tossing two dice (sum of two)
set.seed(1)
ITER = 10000
x = sample(1:6, size=ITER, replace=TRUE)
y = sample(1:6, size=ITER, replace=TRUE)
table(x+y) / ITER


#----------------------------------------------------------
# What if unfair dice are used.
# Say, 0.1, 0.1, 0.1, 0.2, 0.2, 0.3 

# R Code for tossing a fair die
set.seed(1)
ITER = 10000
x = sample(1:6, size=ITER, prob=c(0.1,0.1,0.1,0.2,0.2,0.3), replace=TRUE)
table(x) / ITER

round( table(x) / ITER, 2)
barplot( table(x) / ITER,  col=1:6) # cosmetic


# R Code for tossing two dice (sum of two)
set.seed(1)
ITER = 10000
x = sample(1:6, size=ITER, prob=c(0.1,0.1,0.1,0.2,0.2,0.3), replace=TRUE)
y = sample(1:6, size=ITER, prob=c(0.1,0.1,0.1,0.2,0.2,0.3), replace=TRUE)
table(x+y) / ITER

round( table(x+y) / ITER, 2)
barplot( table(x+y) / ITER,  col=2:12 ) # cosmetic


#==========================================================
# (2) Ratio of the circumference of a circle, pi = 3.14159....
#==========================================================
# It is good to avoid using for() loop
set.seed(1)
ITER = 1E6
x = runif(ITER, min=-1, max=1)
y = runif(ITER, min=-1, max=1)
4 * sum (x^2 + y^2 < 1) / ITER


# What if for() is used?
set.seed(1)
ITER = 1E6
count = 0
for ( i in 1:ITER ) {
    x = runif(1, min=-1, max=1)
    y = runif(1, min=-1, max=1)
    if ( x^2 + y^2 < 1 ) count = count + 1
}
4 * count / ITER 


