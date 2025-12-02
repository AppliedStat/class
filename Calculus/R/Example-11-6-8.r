# Page 501

f = function(x,y) x^2 + 3*y -3*x*y 

x = seq(0, 2, by=0.05)
y = seq(0, 2, by=0.05)
z = array( dim=c(length(x), length(y) ) )

for ( i in 1:length(x) ) {
    for ( j in 1:length(y) ) z[i,j] = f(x[i],y[j])
}

persp(x,y,z)
contour(x,y,z)

persp(x,y,z, theta=120)  # different angle.

#-----------
rm(z)

z = array( dim=c(length(x), length(y) ) )
z = outer(x,y, f)


persp(x,y,z)
contour(x,y,z)

par( mfrow=c(1,2) )
persp(x,y,z, theta=120, phi=15)  # same as the textbook angle. 
contour(x,y,z)


###########################################################
# Check the following after studying Theorem 4 on Page 498.
###########################################################

fx = function(x,y) 2*x - 3*y
fy = function(x,y) 3 - 3*x

fxx = function(x,y) 2 

fyy = function(x,y) 0 

fxy = function(x,y) -3  

D = function(x,y) { fxx(x,y)*fyy(x,y) - (fxy(x,y))^2 }

# at (1,2/3)
f(1, 2/3)
fx(1, 2/3)
fy(1, 2/3)
fxx(1, 2/3)
fyy(1, 2/3)
fxy(1, 2/3)
D(1, 2/3)

