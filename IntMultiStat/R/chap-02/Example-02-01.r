# Textbook page 53

x  =  c(1,3,2)
x1 <- c(1,3,2)
x2 _  c(1,3,2)   ## Old R or S/Splus

y = c(-2,1,-1)

# <- # means comment

# (1) 3x
  3 * x

# (2) x + y
  x + y


# the length/norm/magnitude of x

  length(x) # the dim. of vector x, not magnitude


 x[1]*x[1] + x[2]*x[2] + x[3]*x[3]

 x[1]^2 + x[2]^2 + x[3]^2

 x*x 

 x^2

 sum(x^2)


Lx = sqrt( sum( x^2) ) # or sqrt( crossprod(x) )

Ly = sqrt( sum( y^2) ) # or sqrt( crossprod(y) )

Lx

Ly


cos.th = sum( x*y ) / (Lx*Ly)

cos.th

acos ( cos.th )   # Note it produces a Radian value. 

acos ( cos.th ) * 180/pi





