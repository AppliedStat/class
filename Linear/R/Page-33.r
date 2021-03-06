# Page 33
# Hadamard product

A = matrix( c(1,4,1,7,  0,5,-2,3,  0,0,1,-3), ncol=3)

B = matrix( c(1,-1,0,1, 1,5,-2,1,  0,0,1,-9), ncol=3)

A
B


# * means  Hadamard product 
# NOTE: %*% is a matrix product. 

A * B



# 1/B means Hadamard inverse
B = matrix( c(1,4, 3,5, 2,-3), ncol=3)

1/B

B * (1/B)




