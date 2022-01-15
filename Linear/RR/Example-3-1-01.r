#
# Example 3.1.1 on Page 123
#


# (1) 
a = c(-2,1)
b = c(1,3)

2*a - b


# (2) 

sqrt( sum( (2*a + b)^2 ) )

# Make a function
vector.norm = function(x) sqrt( sum(x^2) )

vector.norm(2*a + b)

vector.norm(2*a + b)^2 # squared norm

# Note: norm() and length() functions in R are different from a vector norm (magnitude)



