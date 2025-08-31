## ==========================
## Example 6.4-1 on Page 275 
## --------------------------

L = function(p, sumx, n) p^sumx * (1-p)^(n-sumx)


p = seq(0.1,0.9, by=0.1)

Lvalues = L(p, sumx=3, n=5 )


cbind(p,Lvalues)

plot(p,Lvalues)

# Note: the textbook says p=0.7 maximizes L function, but it is not true. p=0.6 maximizes L.


