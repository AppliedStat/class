# Page 496 

f = function(x,y) x*exp(-x^2/2-y^3/3+y)

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
rm(x,y,z)

x = seq(-2,2, by=0.1)
y = seq(-2,2, by=0.1)

z = array( dim=c(length(x), length(y) ) )
z = outer(x,y, f)

persp(x,y,z)
contour(x,y,z)

par( mfrow=c(1,2) )
persp(x,y,z, theta=20, phi=55)  # same as the textbook angle. 
contour(x,y,z)


###########################################################
# Check the following after studying Theorem 4 on Page 498.
###########################################################

fx = function(x,y)   (1-x^2)*exp(-x^2/2-y^3/3+y)
fy = function(x,y) x*(1-y^2)*exp(-x^2/2-y^3/3+y)

fxx = function(x,y) (x^3-3*x)*exp(-x^2/2-y^3/3+y) 

fyy = function(x,y) x*((1-y^2)^2 -2*y) * exp(-x^2/2-y^3/3+y)

fxy = function(x,y) (1-x^2)*(1-y^2)*exp(-x^2/2-y^3/3+y)

D = function(x,y) fxx(x,y)*fyy(x,y) - (fxy(x,y))^2 

# at (1,1): Local Max.
f(1,1) 
fx(1,1)
fy(1,1)
fxx(1,1)
fyy(1,1)
fxy(1,1)
D(1,1) 

# at (-1,1): Local Min.
f(-1,1) 
fx(-1,1)
fy(-1,1)
fxx(-1,1)
fyy(-1,1)
fxy(-1,1)
D(-1,1) 

# at (1,-1): saddle 
f(1,-1) 
fx(1,-1)
fy(1,-1)
fxx(1,-1)
fyy(1,-1)
fxy(1,-1)
D(1,-1) 

# at (-1,-1): saddle 
f(-1,-1) 
fx(-1,-1)
fy(-1,-1)
fxx(-1,-1)
fyy(-1,-1)
fxy(-1,-1)
D(-1,-1) 

