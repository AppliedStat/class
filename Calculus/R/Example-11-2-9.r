
# Page 458 

# (a) 

x = seq(-10.5,10.5, by=1)
y = x

f = function(x,y) { x*y /(x^2+y^2) }

z = array( dim=c(length(x), length(y) ) )

for ( i in 1:length(x) ) { 
    for ( j in 1:length(y) ) z[i,j] = f(x[i],y[j])
}

persp(x,y,z)
contour(x,y,z)

persp(x,y,z, theta=120)  # same as the textbook angle. 


#-----------

rm(x,y,z,f)

x = seq(-10,10, by=1)
y = x

f = function(x,y) { x*y /(x^2+y^2) }
z = outer(x,y, f)



persp(x,y,z)
contour(x,y,z)


par( mfrow=c(1,2) )
persp(x,y,z, theta=120)  # same as the textbook angle. 
contour(x,y,z)

