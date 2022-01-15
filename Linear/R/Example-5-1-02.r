# Example 5.1.2 on Page 271

# (1)
A = matrix( c(1,-1, -6,2), ncol=2 )

eigen(A)


EI = eigen(A)

lam1 = EI$values[1]
lam2 = EI$values[2]

vec1 = EI$vectors[,1]
vec2 = EI$vectors[,2]

lam1
vec1
vec1 * sqrt(5) # vec1 from R is a normalized vector

lam2
vec2
vec2 * sqrt(10) # vec2 from R is a normalized vector



# (2)
B = matrix( c(2,0,-3,  -1,1,3,  4,4,-1), ncol=3 )

eigen(B)

EI = eigen(B)

lam1 = EI$values[1]
lam2 = EI$values[2]
lam3 = EI$values[3]

vec1 = EI$vectors[,1]
vec2 = EI$vectors[,2]
vec3 = EI$vectors[,3]

lam1
vec1
vec1 * sqrt(26) # R normalizes vec1 

lam2
vec2
vec2 * sqrt(9)  # R normalizes vec2

lam3
vec3
vec3 * sqrt(2)  # R normalizes vec3


