# Example 1.4.08 on Page 64
# We will solve this Example using Def. 1.4.1 on Page 52.

# B = (A|I4): augmented coefficient matrix
I4 = diag( c(1,1,1,1) )
A = matrix( c(1,1,1,1,  0,1,2,3,  0,0,1,3,  0,0,0,1), ncol=4 )
B = cbind(A, I4)

# ============
# Gauss-Jordan 
# ============

# (1a) E1a: operation for (-1)*R1 + R2 -> R2
E1a = matrix( c(1,-1,0,0,  0,1,0,0,  0,0,1,0, 0,0,0,1), ncol=4 )
E1a 

B = E1a %*% B 
B 

# (1b) E1b: operation for (-1)*R1 + R3 -> R3
E1b = matrix( c(1,0,-1,0,  0,1,0,0,  0,0,1,0, 0,0,0,1), ncol=4 )
E1b

B = E1b %*% B
B

# (1c) E1c: operation for (-1)*R1 + R4 -> R4
E1c = matrix( c(1,0,0,-1,  0,1,0,0,  0,0,1,0, 0,0,0,1), ncol=4 )
E1c

B = E1c %*% B
B


# (2a) E2a: operation for (-2)*R2 + R3 -> R3
E2a = matrix( c(1,0,0,0,  0,1,-2,0,  0,0,1,0, 0,0,0,1), ncol=4 )
E2a

B = E2a %*% B
B

# (2b) E2b: operation for (-3)*R2 + R4 -> R4
E2b = matrix( c(1,0,0,0,  0,1,0,-3,  0,0,1,0, 0,0,0,1), ncol=4 )
E2b

B = E2b %*% B
B


# (3) E3: operation for (-3)*R3 + R4 -> R4
E3 = matrix( c(1,0,0,0,  0,1,0,0,  0,0,1,-3, 0,0,0,1), ncol=4 )
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



