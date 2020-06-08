# Example 3.6.4 on Page 198

A = matrix( c(1,0,0,0,  1,2,1,1,  1,3,0,0,  2,1,1,1,  0,1,1,1), ncol=5 )

# ========================
# Row operations 
# ========================
I4 = diag(4)
R1 = I4[1,]
R2 = I4[2,]
R3 = I4[3,]
R4 = I4[4,]

E1 = rbind(R1, R3, R2,       R4)
E2 = rbind(R1, R2, -2*R2+R3, -R2+R4) 
E3 = rbind(-R2+R1, R2, R3/3, R4)
E4 = rbind(-R3+R1, R2, R3,   R4)

B = E4 %*% E3 %*% E2 %*% E1

# ========================
# Column operations 
# ========================
I5 = diag(5)
C1 = I5[,1]
C2 = I5[,2]
C3 = I5[,3]
C4 = I5[,4]
C5 = I5[,5]

E1 = cbind(C1, C2, C3, -4/3*C1+C4, 2/3*C1+C5)
E2 = cbind(C1, C2, C3, -C2+C4,      -C2+C5)
E3 = cbind(C1, C2, C3, 1/3*C3+C4,   1/3*C3+C5)

C = E1 %*% E2 %*% E3



##########################

B %*% A %*% C

round( B %*% A %*% C, 8)



