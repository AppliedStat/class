# Problem-1-3-1 (Page 40) 

# We will solve this Example using Def. 1.4.1 (Page 52).

# B = (A|b): augmented coefficient matrix
A = matrix(c(1,1,1, 1,1,-1, 1,-1,1), ncol=3)
b = c(3,-1,4)

B = cbind(A,b)

# ========================
# Gauss Elimination 
# ========================

# (1) E1: operation for (-1)*R1 + R2 -> R2
E1 = matrix( c(1,-1,0,  0,1,0,  0,0,1), ncol=3 )
E1 

E1 %*% B 

# (2) E2: operation for (-1)*R1 + R3 -> R3
E2 = matrix( c(1,0,-1,  0,1,0,  0,0,1), ncol=3 )
E2 

E2 %*% E1 %*% B  

# (3) E3: operation for R2 <-> R3
E3 = matrix( c(1,0,0,  0,0,1,  0,1,0), ncol=3 )
E3

E3 %*% E2 %*% E1 %*% B

# (4) E4: operation for (-1/2)*R2 -> R2
E4 = matrix( c(1,0,0,  0,-1/2,0,  0,0,1), ncol=3)
E4 

E4 %*% E3 %*% E2 %*% E1 %*% B



# ========================
# Gauss-Jordan Elimination 
# ========================

# (5) E5: operation for (-1/2)*R3 -> R3
E5 = matrix( c(1,0,0,  0,1,0,  0,0,-1/2), ncol=3)
E5

E5 %*% E4 %*% E3 %*% E2 %*% E1 %*% B


# (6) E6: operation for (-1)*R2 + R1 -> R1
E6 = matrix( c(1,0,0,  -1,1,0,  0,0,1), ncol=3)
E6

E6 %*% E5 %*% E4 %*% E3 %*% E2 %*% E1 %*% B



# (7) E7: operation for (-1)*R3 + R1 -> R1
E7 = matrix( c(1,0,0,  0,1,0,  -1,0,1), ncol=3)
E7

E7 %*% E6 %*% E5 %*% E4 %*% E3 %*% E2 %*% E1 %*% B



# From B matrix above, we have the below (reduced row-echelon form)
# x1 = 1.5
# x2 = -2
# x3 = 2


