## ==========================
## Example 2.6-2 on Page 90 
## See Figure 2.6-1
## --------------------------

#================================
# Let's make four plots into one.
#--------------------------------
par ( mfrow=c(2,2) )

xx = 0:6
pmf = dpois(xx, lambda=0.7)
names(pmf) = xx
barplot(pmf, col="white", ylab="f(x)")

xx = 0:6
pmf = dpois(xx, lambda=1.3)
names(pmf) = xx
barplot(pmf, col="white", ylab="f(x)")

xx = 0:20
pmf = dpois(xx, lambda=6.5)
names(pmf) = xx
barplot(pmf, col="white", ylab="f(x)")

xx = 0:20
pmf = dpois(xx, lambda=10.5)
names(pmf) = xx
barplot(pmf, col="white", ylab="f(x)")
