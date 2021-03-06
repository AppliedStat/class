# Example-1-3-2 (Page 39) and Example 1.1.3 (Page 12)

# We will solve this Example using Def. 1.4.1 (Page 52).

# B = (A|b): augmented coefficient matrix
A = matrix(c(1,3,2, 2,-1,3, 1,-3,1), ncol=3)
b = c(3,-1,4)

B = cbind(A,b)

# ========================
# Gauss Elimination 
# ========================
I3 = diag(3)
R1 = I3[1,]
R2 = I3[2,]
R3 = I3[3,]

# (1) E1: operation for (-3)*R1 + R2 -> R2
E1 = matrix( c(1,-3,0,  0,1,0,  0,0,1), ncol=3 )
E1 = rbind(R1, (-3)*R1 + R2, R3)
E1 

B = E1 %*% B 
B 

# (2) E2: operation for (-2)*R1 + R3 -> R3
E2 = matrix( c(1,0,-2,  0,1,0,  0,0,1), ncol=3 )
E2 = rbind(R1, R2, (-2)*R1 + R3)
E2 

B = E2 %*% B 
B

# (3) E3: operation for R2 <-> R3
E3 = matrix( c(1,0,0,  0,0,1,  0,1,0), ncol=3 )
E3 = rbind(R1, R3, R2)
E3

B = E3 %*% B
B

# (4) E4: operation for (-1)*R2 -> R2
E4 = matrix( c(1,0,0,  0,-1,0,  0,0,1), ncol=3)
E4 = rbind(R1, (-1)*R2, R3)
E4 

B = E4 %*% B
B

# (5) E5: operation for 7*R2 + R3 -> R3
E5 = matrix( c(1,0,0,  0,1,7,  0,0,1), ncol=3)
E5 = rbind(R1, R2, 7*R2 + R3)
E5

B = E5 %*% B
B

# From B matrix above, we have the below (row-echelon form)
# x1 + 2*x2 + x3 = 3
#        x2 + x3 = 2
#             x3 = 4



# ========================
# Gauss-Jordan Elimination 
# ========================

# (6) E6: operation for (-2)*R2 + R1 -> R1
E6 = matrix( c(1,0,0, -2,1,0,  0,0,1), ncol=3)
E6 = rbind((-2)*R2 + R1, R2, R3)
E6

B = E6 %*% B
B

# (7) E7: operation for R3 + R1 -> R1
E7 = matrix( c(1,0,0, 0,1,0,  1,0,1), ncol=3)
E7 = rbind(R3 + R1, R2, R3)
E7

B = E7 %*% B
B

# (8) E8: operation for (-1)*R3 + R2 -> R2
E8 = matrix( c(1,0,0, 0,1,0,  0,-1,1), ncol=3)
E8 = rbind(R1, (-1)*R3 + R2, R3)
E8

B = E8 %*% B
B

# From B matrix above, we have the below (reduced row-echelon form)
# x1 = 3
# x2 = -2
# x3 = 4


