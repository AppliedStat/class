#
# Example 3.1.3 on Page 124
#

# u = a / ||a||

a = c(4,-3)
a / sqrt( sum(a^2) )

# Using the vector.norm in the previous Example
vector.norm = function(x) sqrt( sum(x^2) )
a / vector.norm(a)

# ---------------------------------------------
# Make a unit vector function
unit.vector = function(x) x / sqrt( sum(x^2) )

unit.vector( a )
unit.vector( c(4,-3) )

# double check
vector.norm ( unit.vector( c(4,-3) ) )

# ---------------------------------------------
# Note that the above function works for any dimension. 
b = c(1,2,3,4,5,6, 3)

unit.vector(b)

# double check
vector.norm ( unit.vector(b) )




