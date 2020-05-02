# Problem 2.3.1 on Page 107

#==========================================
# We need to make adjoint R function
#-----------------------------------
adjoint1 <- function(A) {
  n = nrow(A)
  B = matrix(NA, n,n)
  for(i in 1L:n) for(j in 1L:n) B[j,i] = (-1L)^(i+j)*det(A[-i,-j])
  return(B)
}
#-----------------------------------
# More advanced
adjoint2 <- function(A) {
  n = nrow(A)
  outer(1L:n,1L:n, Vectorize(function(j,i) (-1L)^(i+j)*det(A[-i,-j])) )
}
#==========================================


#
#==========================================
# Question-1: Find the adjoint of A
#==========================================
#
A = matrix( c(3,1,4, -1,9,1, 2,1,3), nrow=3)
adjoint1(A)
adjoint2(A)

# Same as the above, but adj() is used instead of adjoint1
adj = adjoint1
adj(A)


#
#==========================================
# Question-2: Find the determinant of A
# (Extra Question)
#==========================================
#
adjA = adj(A)
A
Aij  = t(adjA)  # Note adjA=(Aji), not (Aij). Now t(adjA)=(Aij)

# sum (wrt j) of aij * Aij when i=1
# 
3*26    + (-1)*1 + 2*(-35) # when i=1

1*5     + 9*1    + 1*(-7)  # when i=2

4*(-19) + 1*(-1) + 3*28    # when i=3



# when i=1
R1 = A[1,]      # 1st row of A=(aij) matrix
R1
A1 = Aij[1,]    # 1st row of (Aij)   matrix
A1
sum(R1*A1)

# when i=2
R2 = A[2,]
A2 = Aij[2,]
R2; A2
sum(R2*A2)

# when i=3
R3 = A[3,]
A3 = Aij[3,]
R3; A3
sum(R3*A3)

# Use det() funciton (not recommended for educational purpose)
det(A)



#
#==========================================
# Question-3: sum (wrt j) of akj * Aij  when k is not equal to i
# (Extra Question)
#==========================================
#
sum(R1*A1) # when k=i=1
sum(R1*A2)
sum(R1*A3)

sum(R2*A1)
sum(R2*A2) # when k=i=2
sum(R2*A3)

sum(R3*A1)
sum(R3*A2)
sum(R3*A3) # when k=i=3



#
#==========================================
# Question-4: Find the determinant of A using j-th col
# (Extra Question)
#==========================================
#

# sum (wrt i) of aij * Aij when j=1
# 
   3*26 + 1*5    + 4*(-19) # when j=1 (1st col)

(-1)*1  + 9*1    + 1*(-1)  # when j=2 (2nd col)

2*(-35) + 1*(-7) + 3*28    # when j=3 (3rd col)


# when j=1
C1 = A[,1]      # 1st col of A=(aij) matrix
C1
AC1 = Aij[,1]   # 1st col of (Aij)   matrix
AC1
sum(C1*AC1)

# when j=2
C2 = A[,2]      # 2nd col of A=(aij) matrix
C2
AC2 = Aij[,2]   # 2nd col of (Aij)   matrix
AC2
sum(C2*AC2)

# when j=3
C3 = A[,3]      # 3rd col of A=(aij) matrix
C3
AC3 = Aij[,3]   # 3rd col of (Aij)   matrix
AC3
sum(C3*AC3)



#==========================================
# Question-5: sum (wrt i) of aik * Aij  when k is not equal to j
# (Extra Question)
#==========================================
#
sum(C1*AC2)
sum(C1*AC3)

sum(C2*AC1)
sum(C2*AC3)

sum(C3*AC1)
sum(C3*AC2)


#
#==========================================
# Question-6: A * adj(A)
# (Extra Question)
#==========================================
#

A %*% adj(A)

round(A %*% adj(A), 5)


