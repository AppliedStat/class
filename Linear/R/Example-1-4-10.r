# Example 1.4.10 on Page 67 
# We will solve this Example using Def. 1.4.1 on Page 52.

# B = (A|b): augmented coefficient matrix
B = matrix( c(1,-1,2,  4,-2,2, 3,0,3,  12,-12,8), ncol=4)

# ========================
# Gauss Elimination 
# ========================

# (1a) E1a: operation for R1 + R2 -> R2
E1a = matrix( c(1,1,0,  0,1,0,  0,0,1), ncol=3 )
E1a 

B = E1a %*% B 
B 

# (1b) E1b: operation for -2R1 + R3 -> R3
E1b = matrix( c(1,0,-2,  0,1,0,  0,0,1), ncol=3 )
E1b 

B = E1b %*% B 
B

# (2) E2: operation for 3R2 + R3 -> R3
E2 = matrix( c(1,0,0,  0,1,3,  0,0,1), ncol=3 )
E2

B = E2 %*% B
B

# (3a) E3a: operation for (-1/2)*R3 + R1 -> R1
E3a = matrix( c(1,0,0,  0,1,0,  -1/2,0,1), ncol=3)
E3a 

B = E3a %*% B
B

# (3b) E3b: operation for (-1/2)*R3 + R2 -> R2
E3b = matrix( c(1,0,0,  0,1,0,  0,-1/2,1), ncol=3)
# Note: diag( c(1,-1,1) )
E3b 

B = E3b %*% B
B

# (4) E4: operation for (-2)*R2 + R1 -> R1
E4 = matrix( c(1,0,0,  -2,1,0,  0,0,1), ncol=3)
# Note: diag( c(1,-1,1) )
E4

B = E4 %*% B
B

# (5a) E5a: operation for (1/2)*R2 -> R2
E5a = matrix( c(1,0,0,  0,1/2,0,  0,0,1), ncol=3)
E5a

B = E5a %*% B
B

# (5b) E5b: operation for (1/6)*R3 -> R3
E5b = matrix( c(1,0,0,  0,1,0,  0,0,1/6), ncol=3)
E5b

B = E5b %*% B
B

