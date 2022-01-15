#
# Example 3.1.6 on Page 131
#

# -------------------------------------
# Component
# -------------------------------------
a = c(1,-1, 2)
b = c(0, 2,-1)

sum( a*b ) / sqrt( sum(a^2) )

# Compare with the textbook
-4/sqrt(6)

# Make a function
comp = function(x,y) sum(x*y) / sqrt(sum(x^2))
comp(a,b)


# -------------------------------------
# Projection
# -------------------------------------
sum(a*b) / sum(a^2) * a

# Compare with the textbook
c(-2/3, 2/3, -4/3)

# Make a function
proj =  function(x,y) sum(x*y) / sum(x^2) * x
proj(a,b)

#--------------------------------------
# Double check 
# Proj = Comp * unit.vector
comp(a,b) * a / sqrt( sum(a^2) ) 

# Using a unit.vector function
unit.vector = function(x) x / sqrt( sum(x^2) )

comp(a,b) * unit.vector(a)


