#======================================================
# Example 8.5.1 on Page 400
#------------------------------------------------------

K = function(p, x, n) {
  pbinom(x, size=n, prob=p)
}

pp = seq(0, 0.5, length=51)

K(pp, n=20)


# Figure 8.5-1 
plot(pp, K(pp,x=6,n=20), type="l" )


