# Example-1-5-1 (Page 72)

A = matrix( c(4, 20, -8, -2,-7,13, 1,12,17), ncol=3 )

# (-5)*R1+R2 -> R2
E1 = matrix( c(1,-5,0, 0,1,0, 0,0,1), ncol=3 ) 
E1 %*% A

# 2*R1 + R3 -> R3 
E2 = matrix( c(1,0,2, 0,1,0, 0,0,1), ncol=3 ) 
E2 %*% E1 %*% A

# (-3)*R2 + R3 -> R3
E3 = matrix( c(1,0,0, 0,1,-3, 0,0,1), ncol=3 ) 
E3 %*% E2 %*% E1 %*% A

U1 = E3 %*% E2 %*% E1 %*% A

#-------
E1inv = matrix( c(1,+5,0, 0,1,0, 0,0,1), ncol=3 )
E2inv = matrix( c(1,0,-2, 0,1,0, 0,0,1), ncol=3 )  
E3inv = matrix( c(1,0,0, 0,1,+3, 0,0,1), ncol=3 )
#-------

L1 = E1inv %*% E2inv %*% E3inv 

# Double-cehck
L1; U1
L1 %*% U1 
A 

################################################
# Note: all the diagonal elements in the above L1 are one. 
################################################

# We can make all the diagonal elements in U one also.

# (1/4)*R1 -> R1
E4 = matrix( c(1/4,0,0, 0,1,0, 0,0,1), ncol=3 )
E4 %*% E3 %*% E2 %*% E1 %*% A

# (1/3)*R2 -> R2
E5 = matrix( c(1,0,0, 0,1/3,0, 0,0,1), ncol=3 )
E5 %*% E4 %*% E3 %*% E2 %*% E1 %*% A

# (-1/2)*R3 -> R3
E6 = matrix( c(1,0,0, 0,1,0, 0,0,-1/2), ncol=3 )
E6 %*% E5 %*% E4 %*% E3 %*% E2 %*% E1 %*% A

U2 = E6 %*% E5 %*% E4 %*% E3 %*% E2 %*% E1 %*% A

#-------
E4inv = matrix( c(4,0,0, 0,1,0, 0,0,1), ncol=3 )
E5inv = matrix( c(1,0,0, 0,3,0, 0,0,1), ncol=3 )
E6inv = matrix( c(1,0,0, 0,1,0, 0,0,-2), ncol=3 )
#-------

L2 = E1inv %*% E2inv %*% E3inv %*% E4inv %*% E5inv %*% E6inv

# Double-cehck
L2; U2
L2 %*% U2 
A 

################################################
# Note: all the diagonal elements in the above U2 are one. 
################################################
