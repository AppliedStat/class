#======================================================
# Example 5.3.1 (Refer to Example 2.1.7: four-sided die)
#------------------------------------------------------

#------------------------------
# Theoretical pmf of Example 2.1.7 (four-sided die)
x = 2:8; pmf = (4-abs(x-5))/16 
# Check sum(pmf)

#------------------------------
# Now, we toss a six-sided die.
x = 2:12
pmf = (6-abs(x-7))/36 

mu1 = sum ( x * pmf)
mu1 

mu2 = sum( x^2 * pmf)

mu2 - mu1^2 


