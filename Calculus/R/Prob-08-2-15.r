# Problem 15 on Section 8.2 on Page 315

an = function(n,x) n^n / ((n+1)^(n+1)) * x^n

bn = function(n,x)  {
      tmp = n*log(n) - (n+1)*log(n+1) + n*log(x)
      exp(tmp)
}

# Test an and bn
an(11,0.934)
bn(11,0.934)

an(500,0.934)
bn(500,0.934)


sum( bn(1:10000,x=0.999) ) 
sum( bn(1:10000,x=1.001) ) 

n = 10000
x = seq(0.95, 1.01, by=0.001)
Sn= numeric(length(x))

for ( i in seq_along(x) ) {
    Sn[i] = sum( bn(1:n,x=x[i]) ) 
}

plot(x,      Sn, type="l")
plot(x, log(Sn), type="l")






