# =================================
# Figure 1.18 on Page 32.
# =================================

xx = seq(0,50, length=101)

# f(t)
f1 = dnorm(xx, mean=20, sd=1)
f2 = dnorm(xx, mean=20, sd=3)

 plot(xx, f1, type="l")
lines(xx, f2, lty=2)


# F(t)
F1 = pnorm(xx, mean=20, sd=1)
F2 = pnorm(xx, mean=20, sd=3)

 plot(xx, F1, type="l")
lines(xx, F2, lty=2)


# R(t)
R1 = 1 - F1
R2 = 1 - F2

 plot(xx, R1, type="l")
lines(xx, R2, lty=2)

# h(t) : something wrong 
h1 = f1 / R1 
h2 = f2 / R2

 plot(xx, h1, type="l")
lines(xx, h2, lty=2)

# h(t)
h1 = exp( dnorm(xx, mean=20, sd=1, log=T) - pnorm(xx, mean=20, sd=1, lower.tail = FALSE, log.p=T) )
h2 = exp( dnorm(xx, mean=20, sd=3, log=T) - pnorm(xx, mean=20, sd=3, lower.tail = FALSE, log.p=T) )

 plot(xx, h1, type="l")
lines(xx, h2, lty=2)


