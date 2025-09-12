# Page 358 


u = c(6,3,-1)
v = c(0,1,2)
w = c(4,-2,5) 

M = rbind(u,v,w)

det(M)


# Note 
u2 = -u

M2 = rbind(u2,v,w)

det(M2)   # Negative Value 

abs( det(M2) )


