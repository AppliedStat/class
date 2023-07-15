
A = matrix( c(3,-1,2, 1,5,4), ncol=3, byrow=TRUE)

B = c(-2,7,9)


A * B  # This is not a matrix multiplicatioin



# Matrix multicplication

A %*% B   # A is a matrix and B is a vector


B1 = data.matrix(B)   

A %*% B1  # Both are matrices. 


C = matrix( c(2,1 ,0, -1), nrow=2 )

C %*% A


## Help for operators?

? data.matrix # OK

? * 

help("*")

help("%*%")




