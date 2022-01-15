#
# Example 3.1.8 on Page 135
#

# --------
# (1): area of the parallelogram : || a x b ||
# --------
a = c(1, 1, 2)
b = c(3, 2, 0)


# Using a cross.product() from Example 3.1.7 on Page 134
#   and a vector.norm()   from Example 3.1.1 on Page 123.
cross.product = function(x,y) {
    c( x[2]*y[3]-x[3]*y[2], x[3]*y[1]-x[1]*y[3], x[1]*y[2]-x[2]*y[1] )
}
vector.norm = function(x) sqrt( sum(x^2) )

# || a x b || = sqrt(53) from textbook
vector.norm( cross.product(a,b) )


# --------
# (2): volume of the parallelepiped :  a . ( b x c)
# --------
a = c(1, 1, 2)
b = c(3, 2, 0)
c = c(5,-1, 4)



# Using a dot.product function from Example 3.1.5 on Page 129
dot.product  = function(x,y) sum(x*y)


dot.product( a, cross.product(b,c) )

abs( dot.product( a, cross.product(b,c) ) )


# Using a determinant of a matrix
M = rbind(a,b,c)

det(M)


abs( det(M) )



