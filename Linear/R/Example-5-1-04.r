# Example 5.1.4 on Page 276

A = matrix( c(1,0,1,  3,-1,2,  2,0,0), ncol=3 )

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
vec1 * sqrt(5)  # R normalizes vec1 

lam2
vec2
vec2 * sqrt(2)  # R normalizes vec2

lam3
vec3
vec3 * sqrt(2)  # R normalizes vec3. Note: vec2 and vec3 are dependent.

# Using the above, we can obtain the basis of the eigen space of A matrix
