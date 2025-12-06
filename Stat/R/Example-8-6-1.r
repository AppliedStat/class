#======================================================
# Example 8.6.1 on Page 413
#------------------------------------------------------

K = function(p, x, n) {
  pbinom(x, size=n, prob=p)
}

pp = seq(0, 0.5, length=51)


# Figure 8.6-1 
plot(pp, K(pp,x=6,n=20), type="l" )


