#
# Example 3.1.7 on Page 134
#

a = c(1,-1, 3)
b = c(2, 0, 4)

# --------
# (1): a x b
# --------
 c( a[2]*b[3]-a[3]*b[2], a[3]*b[1]-a[1]*b[3], a[1]*b[2]-a[2]*b[1] )

# Make a function
cross.product = function(x,y) {
    c( x[2]*y[3]-x[3]*y[2], x[3]*y[1]-x[1]*y[3], x[1]*y[2]-x[2]*y[1] )
}


cross.product(a,b)

cross.product(c(1,-1, 3), c(2, 0, 4) )

# NOTE: R has a crossprod() function which is not a cross product in the textbook.
# Actually, it is a cross production of two MATRICES, which is NOT covered in the class.
# Anyway, it produces the same value as the innter product if you put two column vectors.
crossprod(a,b)
sum(a*b)


# --------
# (2): b x a
# --------

# Using a function is convenient. 
cross.product(b,a)


# NOTE: Compare cross.product(b,a) and cross.product(a,b).
# Check the below
cross.product(b,a) + cross.product(a,b)

# --------
# (3): || a x b ||
# --------
tmp = cross.product(a,b)

sqrt( sum(tmp^2) )

# Compare the above with the textbook:sqrt(24)
sqrt(24)

# Using a vector.norm function from Example 3.1.1 on Page 123
vector.norm = function(x) sqrt( sum(x^2) )  

vector.norm ( cross.product(a,b) )


# --------
# (4) 
# --------

# (a x b) . a
tmp = cross.product(a,b) 
sum( tmp*a )

# Recall: dot.product from Example 3.1.5
dot.product = function(x,y) sum(x*y)

dot.product( cross.product(a,b), a )

# (a x b) . b
tmp = cross.product(a,b) 
sum( tmp*b )

dot.product( cross.product(a,b), b )



