# Example-2-2-2 (Page 94)

# (1-A)
A = matrix( c(1,0,5,  -2,0,1,  3,2,3), ncol=3 )
A
det(A)

# (1-B)
# Note: R2 and R3 are swaped 
B = A[c(1,3,2), ] 
B 
det(B)


# Of course, we can make B matrix as below.
B1 = matrix( c(1,5,0,  -2,1,0,  3,3,2), ncol=3 )
B1
det(B1)


# (1-C)
C =  A[c(3,1,2), ]   # R1 <-> R2 and then  R1 <-> R3
# That is, Rows: (1,2,3) -> (2,1,3) -> (3,1,2)
C
det(C)

# Of course, we can make B matrix as below.
C1 = matrix( c(5,1,0,  1,-2,0,  3,3,2), ncol=3 )
C1
det(C1)

