# Exercise 7.1-5 on Page 315

x = c(93, 140,  8, 120, 3, 120, 33, 70, 91, 61, 7, 100, 19, 98, 110,
      23,  14, 94, 57,  9,  66, 53, 28, 76, 58, 9,  73, 49, 37,  92 )



# --------------------------------------------------------------------
# Using normal approximation

n = length(x)
xbar = mean(x) 
za2 = qnorm(0.95)
s = sd(x)

xbar - za2 * s / sqrt(n)
xbar + za2 * s / sqrt(n)



# --------------------------------------------------------------------
# Using t approximation
t.test(x, conf.level=0.90)

n = length(x)
xbar = mean(x) 
ta2 = qt(0.95, df=n-1)
s = sd(x)

xbar - ta2 * s / sqrt(n)
xbar + ta2 * s / sqrt(n)


