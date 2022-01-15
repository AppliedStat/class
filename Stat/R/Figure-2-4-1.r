## ==========================
## Figure 2.4-1 on Page 76 
## --------------------------

# Histogram in R is only for a sample. 

xx = 0:16
pmf = dbinom(xx, size=16, prob=0.75)
plot(xx, pmf, type="h", lwd=10, xlab="Bin(16,0.75)", ylab="f(x)") 

# The above is not bad, but different from the textbook.

#-----------------------------
names(pmf) = xx
barplot(pmf, col="white", xlab="Bin(16,0.75)", ylab="f(x)")

#================================
# Let's make four plots into one.
#--------------------------------
par ( mfrow=c(2,2) )

xx = 0:16
pmf = dbinom(xx, size=16, prob=0.75)
names(pmf) = xx
barplot(pmf, col="white", xlab="Bin(16,0.75)", ylab="f(x)")

xx = 0:16
pmf = dbinom(xx, size=16, prob=0.50)
names(pmf) = xx
barplot(pmf, col="white", xlab="Bin(16,0.50)", ylab="f(x)")

xx = 0:25
pmf = dbinom(xx, size=16, prob=0.35)
names(pmf) = xx
barplot(pmf, col="white", xlab="Bin(25,0.35)", ylab="f(x)")

xx = 0:25
pmf = dbinom(xx, size=16, prob=0.20)
names(pmf) = xx
barplot(pmf, col="white", xlab="Bin(25,0.20)", ylab="f(x)")

