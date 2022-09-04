# Page 303

a = function(n) sin((n+0.5)*pi)/n
s = function(n) sum(a(1:n))


nn = 1:50
ss = numeric(length(nn))

for ( i in seq_along(nn) ) { 
ss[i] = s(i)
}

plot(nn,ss, type="l")
abline(h=-log(2), col="red")


