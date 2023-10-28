# Example 3.13 on Page 141

X = matrix( c(1,4,4, 2,1,0, 5,6,4), ncol=3)

det(S)


b = c(2, 2, -1)
c = c(1, -1, 3)

xbar = colMeans(X)
xbar 
S 


t(b) %*% xbar 

t(c) %*% xbar 


t(b) %*% S %*% b

t(c) %*% S %*% c

t(b) %*% S %*% c

t(c) %*% S %*% b
 




