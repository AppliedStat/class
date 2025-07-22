#======================================================
# Example 5.3.1 (Refer to Example 2.1.4: four-sided die)
#------------------------------------------------------

#------------------------------
# Theoretical pmf of Example 2.1.4 (four-sided die)
x = 2:8  # Support
pmf = (4-abs(x-5))/16 # pmf of X
# Check pmf and sum(pmf)
pmf 
sum(pmf)

#------------------------------
# Now, we toss a six-sided die. (this Example 5.3.1)
# 
y = 2:12   # Support 
pmf = (6-abs(y-7))/36   # pmf of Y

pmf
sum(pmf)


mu1 = sum ( y * pmf)
mu1 

mu2 = sum( y^2 * pmf)

mu2 - mu1^2 


