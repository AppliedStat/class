# Page 304

a = function(n) (-1)^n / factorial(n) 
s = function(n) sum(a(0:n))

## N=7 is enough b/c 7!=5040 and 6!=720
# Compare
c( exp(-1), s(7), s(6) )


N = 7
ss = numeric(N+1)

for ( i in 0:N)  { 
ss[i+1] = s(i)
}

plot(0:N,ss, type="l")
abline(h=exp(-1), col="red")



