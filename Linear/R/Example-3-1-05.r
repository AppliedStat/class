#
# Example 3.1.5 on Page 129
#

a = c( 2,-1, 7)
b = c(-8, 5, 3)  # NOTE: -8 is used instead of 8.
# NOTE: textbook uses <8,5,3> which is a typo. (-8) should be used.

# dot product
sum( a*b )

# make a function
dot.product = function(x,y) sum(x*y)
dot.product(a,b)

#----------------------------------------------------------------------------
# NOTE: R has a crossprod() function which is not a cross product in the textbook.
# Actually, it is a cross production of two MATRICES, which is NOT covered in the class.
# Anyway, it produces the same value as the innter product if you put two column vectors.
crossprod(a,b)


