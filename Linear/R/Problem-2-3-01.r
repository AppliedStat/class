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
t(adjA)  # Note adjA=(Aji), not (Aij). Now t(adjA)=(Aij)

# sum (wrt j) of aij * Aij when i=1
# 
3*26    + (-1)*1 + 2*(-35) # when i=1

1*5     + 9*1    + 1*(-7)  # when i=2

4*(-19) + 1*(-1) + 3*28    # when i=3


# when i=1
R1 = A[1,];         # 1st row of A=(aij) matrix
R1
A1 = t(adjA)[1,]    # 1st row of (Aij)   matrix
A1
A1 = adjA[,1]       # 1st row of (Aij) is the same as the first col of adj(A)
A1
sum(R1*A1)

# when i=2
R2 = A[2,]; A2 = adjA[,2]
R2; A2
sum(R2*A2)

# when i=3
R3 = A[3,]; A3 = adjA[,3]
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
# Question-4: A * adj(A)
# (Extra Question)
#==========================================
#

A %*% adj(A)

round(A %*% adj(A), 5)


