## ==========================
## Example 2.6-5 on Page 92 
## Poisson approximation to Binomial 
## --------------------------

xx = 0:3
dbinom(xx, size=100, prob=0.02)
dpois(xx, lambda=2)

#----------------------------
fbin = dbinom(xx, size=100, prob=0.02)
fpoi = dpois(xx, lambda=2)

rbind(xx, fbin, fpoi)

#----------------------------
sum(fbin)
sum(fpoi)

