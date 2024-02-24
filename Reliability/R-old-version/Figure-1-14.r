# =================================
# Figures 1.14 on Page 22.
# =================================


xx = seq(0,40, l=101)
f1 = dweibull(xx, shape=1,   scale=20) # shape (gamma=1) -> Exponential Dist.
f2 = dweibull(xx, shape=3,   scale=20) # shape (gamma=1) -> Exponential Dist.
f3 = dweibull(xx, shape=5.5, scale=20) # shape (gamma=1) -> Exponential Dist.


#===========================================
plot(xx, f1)
lines(xx, f2)
lines(xx, f3)

#===========================================
# The above is ugly.  # Facelift is needed 

yrange = range(f1,f2,f3)
plot(xx, f1, ylim=yrange, xlab="Time", ylab="f(t)", type="l")
lines(xx, f2, col="red")
lines(xx, f3, col="blue")

