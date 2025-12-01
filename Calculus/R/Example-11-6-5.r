# Page 499

f = function(x,y) 2*x^4 + y^2 - x^2 - 2*y  

x = seq(-2,2, by=0.1)
y = seq(-2,2, by=0.1)
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

fx = function(x,y) 8*x^3 - 2*x
fy = function(x,y) 2*y - 2

fxx = function(x,y) 24*x^2 - 2

fyy = function(x,y) 2 

fxy = function(x,y) 0 

D = function(x,y) { fxx(x,y)*fyy(x,y) - (fxy(x,y))^2 }

# at (-1/2,1)
f(-1/2,1)
fx(-1/2,1)
fy(-1/2,1)
fxx(-1/2,1)
fyy(-1/2,1)
fxy(-1/2,1)
D(-1/2,1)

# at (1/2,1)
f(1/2,1)
fx(1/2,1)
fy(1/2,1)
fxx(1/2,1)
fyy(1/2,1)
fxy(1/2,1)
D(1/2,1)

# at (0,1)
f(0,1)
fx(0,1)
fy(0,1)
fxx(0,1)
fyy(0,1)
fxy(0,1)
D(0,1)

