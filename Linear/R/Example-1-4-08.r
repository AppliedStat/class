# Example 1.4.08 on Page 64
# We will solve this Example using Def. 1.4.1 on Page 52.

# B = (A|I4): augmented coefficient matrix
I4 = diag( c(1,1,1,1) )
I4 = diag(4)  # Same as the above, but simple.

A = matrix( c(1,1,1,1,  0,1,2,3,  0,0,1,3,  0,0,0,1), ncol=4 )
B = cbind(A, I4)
B 

# ============
# Gauss-Jordan 
# ============
R1 = I4[1,]
R2 = I4[2,]
R3 = I4[3,]
R4 = I4[4,]

# (1a) E1a: operation for (-1)*R1 + R2 -> R2
E1a = matrix( c(1,-1,0,0,  0,1,0,0,  0,0,1,0, 0,0,0,1), ncol=4 )
E1a = rbind( R1, (-1)*R1 + R2, R3, R4 )
E1a 

B = E1a %*% B 
B 

# (1b) E1b: operation for (-1)*R1 + R3 -> R3
E1b = matrix( c(1,0,-1,0,  0,1,0,0,  0,0,1,0, 0,0,0,1), ncol=4 )
E1b = rbind( R1, R2, (-1)*R1 + R3, R4 )
E1b

B = E1b %*% B
B

# (1c) E1c: operation for (-1)*R1 + R4 -> R4
E1c = matrix( c(1,0,0,-1,  0,1,0,0,  0,0,1,0, 0,0,0,1), ncol=4 )
E1c = rbind( R1, R2, R3, (-1)*R1 + R4)
E1c

B = E1c %*% B
B


# (2a) E2a: operation for (-2)*R2 + R3 -> R3
E2a = matrix( c(1,0,0,0,  0,1,-2,0,  0,0,1,0, 0,0,0,1), ncol=4 )
E2a = rbind( R1, R2, (-2)*R2 + R3, R4 )
E2a

B = E2a %*% B
B

# (2b) E2b: operation for (-3)*R2 + R4 -> R4
E2b = matrix( c(1,0,0,0,  0,1,0,-3,  0,0,1,0, 0,0,0,1), ncol=4 )
E2b = rbind( R1, R2, R3, (-3)*R2 + R4 )
E2b

B = E2b %*% B
B


# (3) E3: operation for (-3)*R3 + R4 -> R4
E3 = matrix( c(1,0,0,0,  0,1,0,0,  0,0,1,-3, 0,0,0,1), ncol=4 )
E3 = rbind( R1, R2, R3, (-3)*R3 + R4 )
E3 

B = E3 %*% B
B

#
Ainv = B[,5:8]
Ainv 


#############################################################
# NOTE: I do not recommend the below for educational purpose.
#       But, you can double-check the answer using the below.
#############################################################
solve(A)




#############################################################
## Same as the above, but simpler
#############################################################
A = matrix( c(1,1,1,1,  0,1,2,3,  0,0,1,3,  0,0,0,1), ncol=4 )
I4 = diag(4)  # Same as the above, but simple.

B = cbind(A, I4)
B 

# ============
# Gauss-Jordan 
# ============
R1 = I4[1,]
R2 = I4[2,]
R3 = I4[3,]
R4 = I4[4,]

# (1a) E1a: operation for (-1)*R1 + R2 -> R2
# (1b) E1b: operation for (-1)*R1 + R3 -> R3
# (1c) E1c: operation for (-1)*R1 + R4 -> R4
E1 = rbind( R1, (-1)*R1 + R2, (-1)*R1 + R3, (-1)*R1 + R4 )
E1 

B = E1 %*% B 
B 

# (2a) E2a: operation for (-2)*R2 + R3 -> R3
# (2b) E2b: operation for (-3)*R2 + R4 -> R4
E2 = rbind( R1, R2, (-2)*R2 + R3, (-3)*R2 + R4 )
E2

B = E2 %*% B
B

# (3) E3: operation for (-3)*R3 + R4 -> R4
E3 = matrix( c(1,0,0,0,  0,1,0,0,  0,0,1,-3, 0,0,0,1), ncol=4 )
E3 = rbind( R1, R2, R3, (-3)*R3 + R4 )
E3 

B = E3 %*% B
B

#
Ainv = B[,5:8]
Ainv 


