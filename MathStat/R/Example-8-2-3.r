#======================================================
# Example 8.2.3 on Page 377
#------------------------------------------------------
X = c(6.85, 6.6,  6.7,  6.75, 6.75, 6.9,  6.85, 6.9,  6.7,  6.85, 
      6.6,  6.7,  6.75, 6.7,  6.7,  6.7,  6.55, 6.6,  6.95, 6.95, 
      6.8,  6.8,  6.7,  6.75, 6.6,  6.7,  6.65, 6.55, 6.55, 6.6, 
      6.6,  6.7,  6.8,  6.75, 6.6,  6.75, 6.5,  6.75, 6.7,  6.65,
      6.7,  6.7,  6.55, 6.65, 6.6,  6.65, 6.6,  6.65, 6.8,  6.6 )

Y = c(7.1,  7.05, 6.7,  6.75, 6.9,  6.9,  6.65, 6.6,  6.55, 6.55, 
      6.85, 6.9,  6.6,  6.85, 6.95, 7.1,  6.95, 6.9,  7.15, 7.05,
      6.7,  6.9,  6.85, 6.95, 7.05, 6.75, 6.9,  6.8,  6.7,  6.75, 
      6.9,  6.9,  6.7,  6.7,  6.9,  6.9,  6.7,  6.7,  6.9,  6.95 )


Z = ( mean(X)-mean(Y) ) / sqrt( var(X)/length(X) + var(Y)/length(Y) ) 
p.value = pnorm(Z)  # p-value
c(Z, p.value)


# Welch Two Sample t-test
t.test(X,Y, alternative="less", var.equal=FALSE)

