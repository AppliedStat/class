# See Page 52 and Page 39
# Example 1.3.2 on Page 39 and Example 1.1.3 on Page 12
# We will solve this Example using Def. 1.4.1 on Page 52.


# B = (A|b): augmented coefficient matrix
B = matrix(c(1,3,2, 2,-1,3, 1,-3,1, 3,-1,4), ncol=4)

# ========================
# Gauss Elimination 
# ========================

# (1) E1: operation for -3R1 + R2 -> R2
E1 = matrix( c(1,-3,0,  0,1,0,  0,0,1), ncol=3 )
E1 

B = E1 %*% B 
B 

# (2) E2: operation for -2R1 + R3 -> R3
E2 = matrix( c(1,0,-2,  0,1,0,  0,0,1), ncol=3 )
E2 

B = E2 %*% B 
B

# (3) E3: operation for R2 <-> R3
E3 = matrix( c(1,0,0,  0,0,1,  0,1,0), ncol=3 )
E3

B = E3 %*% B
B

# (4) E4: operation for (-1)*R2 -> R2
E4 = matrix( c(1,0,0,  0,-1,0,  0,0,1), ncol=3)
# Note: diag( c(1,-1,1) )
E4 

B = E4 %*% B
B

# (5) E5: operation for 7*R2 + R3 -> R3
E5 = matrix( c(1,0,0,  0,1,7,  0,0,1), ncol=3)
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
E6

B = E6 %*% B
B

# (7) E7: operation for R3 + R1 -> R1
E7 = matrix( c(1,0,0, 0,1,0,  1,0,1), ncol=3)
E7

B = E7 %*% B
B

# (8) E8: operation for (-1)*R3 + R2 -> R2
E8 = matrix( c(1,0,0, 0,1,0,  0,-1,1), ncol=3)
E8

B = E8 %*% B
B

# From B matrix above, we have the below (reduced row-echelon form)
# x1 = 3
# x2 = -2
# x3 = 4


