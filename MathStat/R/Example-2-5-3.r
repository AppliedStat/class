## ==========================
## Example 2.5-3 on Page 82 
## --------------------------

# x = number of white balls
# m = number of white balls in an urn
# n = number of black balls in an urn 
# k = number of balls drawn 

dhyper(x=0, m=20, n=80, k=5) 


# Also, 

f = dhyper(x=0:5, m=20, n=80, k=5) 
f

# Check 
sum(f)




