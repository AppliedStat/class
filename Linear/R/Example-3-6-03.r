# Example 3.6.3 on Page 195

A = matrix( c(-3,1,-3,  1,2,8,  3,-1,4,  4,-2,2), ncol=4 )

# ========================
# Row operations 
# ========================
I3 = diag(3)
R1 = I3[1,]
R2 = I3[2,]
R3 = I3[3,]

E1 = rbind(R2,       R1,      R3)   # R2 <-> R1
E2 = rbind(R1,  3*R1+R2, 3*R1+R3)   # 3*R1+R2  -> R2 and 3*R1+R3 -> R3
E3 = rbind(R1,       R2,-2*R2+R3)   # -2*R2+R3 -> R3
E4 = rbind(R1, (1/7)*R2,      R3)   # (1/7)*R2 -> R2
E5 = rbind(R3+R1,    R2,      R3)   # R3+R1 -> R2  #(typo in the textbook)
E6 = rbind(-2*R2+R1, R2,      R3)   # -2*R2+R1 -> R1

# Try
E1 %*% A
E2 %*% E1 %*% A
E3 %*% E2 %*% E1 %*% A

# ....
E6 %*% E5 %*% E4 %*% E3 %*% E2 %*% E1 %*% A

round(E6 %*% E5 %*% E4 %*% E3 %*% E2 %*% E1 %*% A, 9)


# ========================
# Column operations 
# ========================
# Consider the transpose of A 
#  and then carry out row operations on the transpose of A
B = t(A) # B = transpose of A
I4 = diag(4)
R1 = I4[,1]
R2 = I4[,2]
R3 = I4[,3]
R4 = I4[,4]

E1 = rbind(R2, R1, R3, R4)
E2 = rbind(R1, 3*R1+R2, -3*R1+R3, -4*R1+R4)
E3 = rbind(R1, R2, R2+R3, (-1/10)*R4)
E4 = rbind(R1, (1/7)*R2, R3, R4)
E5 = rbind(R1, R2, R3, -R2+R4) 
E6 = rbind(-8*R3+R1, -3*R3+R2, R3, R4)  # -3*R3+R2 -> R2 & -8*R3+R1 -> R1  
                                        # -2*R2+R1 -> R1 should be in the next step.
E7 = rbind(-2*R2+R1, R2, R3, R4)         

# Try
E1 %*% B
E2 %*% E1 %*% B
E3 %*% E2 %*% E1 %*% B

# ...

E7 %*% E6 %*% E5 %*% E4 %*% E3 %*% E2 %*% E1 %*% B

round( t(E7 %*% E6 %*% E5 %*% E4 %*% E3 %*% E2 %*% E1 %*% B), 9 )



