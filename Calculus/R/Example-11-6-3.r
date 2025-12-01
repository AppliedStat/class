# Page 497 

f = function(x,y) y^2 - x^2 

x = seq(-10,10, by=1)
y = seq(-10,10, by=1)
z = array( dim=c(length(x), length(y) ) )

for ( i in 1:length(x) ) {
    for ( j in 1:length(y) ) z[i,j] = f(x[i],y[j])
}

persp(x,y,z)
contour(x,y,z)

persp(x,y,z, theta=120)  # same as the textbook angle. 

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

fx = function(x,y) -2*x 
fy = function(x,y)  2*y 

fxx = function(x,y) -2

fyy = function(x,y)  2

fxy = function(x,y)  0

D = function(x,y) { fxx(x,y)*fyy(x,y) - (fxy(x,y))^2 }

# at (0,0): saddle 
f(0,0)
fx(0,0)
fy(0,0)
fxx(0,0)
fyy(0,0)
fxy(0,0)
D(0,0)
