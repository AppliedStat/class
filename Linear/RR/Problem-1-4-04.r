# Problem 1.4.4 on Page 59 
# We will solve this Example using Def. 1.4.1 (pg. 52) and Thm 1.4.4. (pg. 57)


E1 = matrix( c(1,0,0,    0,1/3,0, 0,0,1), ncol=3 )
E2 = matrix( c(1,0,0,    0,  2,0, 0,0,1), ncol=3 )
E3 = matrix( c(1,0,-1/2, 0,  1,0, 0,0,1), ncol=3 )

A = E1 %*% E2 %*% E3

E1inv = matrix( c(1,0,0,    0,  3,0, 0,0,1), ncol=3 )
E2inv = matrix( c(1,0,0,    0,1/2,0, 0,0,1), ncol=3 )
E3inv = matrix( c(1,0,1/2,  0,  1,0, 0,0,1), ncol=3 )

Ainv = E3inv %*% E2inv %*% E1inv
Ainv



#############################################################
# NOTE: I do not recommend the below for educational purpose.
#       But, you can double-check the answer using the below.
#############################################################
solve(A)

