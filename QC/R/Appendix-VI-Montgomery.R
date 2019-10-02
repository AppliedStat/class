#-----------------------------------
c4 = function(n) {
     tmp = lgamma(n/2) - lgamma( (n-1)/2)
     sqrt(2/(n-1)) * exp(tmp) 
}
#-----------------------------------
# d2 is involved with improper integration. 
# See below
d2 = function(n) {
    integrand = function(x) {
                 Phi = pnorm(x)
                 2*(1 - (1-Phi)^n - Phi^n)
    }
    tmp = integrate(integrand, lower=0, upper=Inf)
    return(tmp$value)
}
#-----------------------------------
d3 = function(n) {
   mu = d2(n)
   joint2 = function(x,y) {(y-mu)^2*exp(-(x^2+(x+y)^2)/2)*(pnorm(x+y)-pnorm(x))^(n-2)}
   tmp = integrate(function(y) {
     sapply(y,function(y) {integrate(function(x) joint2(x,y),-Inf,Inf)$value})
   }, 0, Inf)
   sqrt( n*(n-1)/2/pi*tmp$value )
}
#-----------------------------------
A  = function(n) {3/sqrt(n)}
A2 = function(n) {3/d2(n)/sqrt(n)}   # Eq (6.8) on Page 238
A3 = function(n) {3/c4(n)/sqrt(n)}   # Above Eq (6.28) on Page 262

#-----------------------------------
B3 = function(n) {max(0,1-3*sqrt(1-c4(n)^2)/c4(n))} # Eq (6.26) on Page 261
B4 = function(n) {1+3*sqrt(1-c4(n)^2)/c4(n)}        # Eq (6.26) on Page 261

B5 = function(n) {max(0,c4(n)-3*sqrt(1-c4(n)^2))} # Eq (6.24) on Page 260
B6 = function(n) {c4(n)+3*sqrt(1-c4(n)^2)}        # Eq (6.24) on Page 260

##-----------------------------------
D1 = function(n) {max(0,d2(n)-3*d3(n))}  # Above Eq (6.17) on Page 251
D2 = function(n) {d2(n)+3*d3(n)}         # Above Eq (6.17) on Page 251

D3 = function(n) {max(0,1-3*d3(n)/d2(n))} # Above Eq (6.10) on Page 238
D4 = function(n) {1+3*d3(n)/d2(n)}        # Above Eq (6.10) on Page 238


##=====================================
#-----------------------------------
# Expectation of X_(j:n)
EXjn = function(j,n) {
    tmp = exp(lgamma(n+1)-lgamma(j)-lgamma(n-j+1)) 
    int = integrate(function(f,n,j){qnorm(f)*f^(j-1)*(1-f)^(n-j)},lower=0,upper=1,n=n,j=j)
    return(tmp*int$value)
}
d2b = function(n) { 2*EXjn(n,n) }  ## But, it takes more time and less accurate. 
#-----------------------------------


