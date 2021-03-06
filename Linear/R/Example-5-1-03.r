# Example 5.1.3 on Page 274

A = matrix( c(3,-2,0,  -2,3,0,  0,0,5), ncol=3 )

eigen(A)

EI = eigen(A)

lam1 = EI$values[1]
lam2 = EI$values[2]
lam3 = EI$values[3]

vec1 = EI$vectors[,1]
vec2 = EI$vectors[,2]
vec3 = EI$vectors[,3]

lam1
vec1
vec1 * sqrt(1)  # R normalizes vec1 

lam2
vec2
vec2 * sqrt(2)  # R normalizes vec2

lam3
vec3
vec3 * sqrt(2)  # R normalizes vec3

# Using the above, we can obtain the basis of the eigen space of A matrix



###################################
# See Section 5.2
# Diagonalizable? Yes!
# Check below:

P = EI$vectors
Pinv = solve(P)
D = Pinv %*% A %*% P
D 

round(D, 9)



