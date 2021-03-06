# Page 22
# ----------------------------------------------
# (1)
# ----------------------------------------------
A = matrix( c(1,2,3,4,5,6), nrow=2, byrow=T) 
A
    matrix( c(1,2,3,4,5,6), nrow=2)  # Wrong! b/c matrix is col-major


A = matrix( 1:6, nrow=2, byrow=T)  # OK
A

# Transpose of A
t(A)


# ----------------------------------------------
# (2) 
# ----------------------------------------------
# Either one is OK
 matrix( c(1, 0,2, -3,1,4), nrow=3)
 matrix( c(1,-3,0,  1,2,4), nrow=3, byrow=T)
 matrix( c(1, 0,2, -3,1,4), ncol=2)

A = matrix( c(1,0,2,  -3,1,4),   ncol=2)
t(A) # transpose of A


# 
B = matrix( c(1, -5, 9), nrow=1)
t(B) # transpose of B


# NOTE: 
v = c(1, -5, 9) # column vector. Same as the 3x1 matrix
# The above is slightly different from t(B) in its printing format. 
# But, v and t(B) are essentially the same.

