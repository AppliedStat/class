
#  Making a matrix

t1 = c(3, 1)
t2 = c(-1,5)
t3 = c(2, 4)

A1 = cbind(t1,t2,t3)


t1 = c(3,-1, 2)
t2 = c(1, 5, 4)

A2 = rbind(t1,t2)


is.matrix(A1)

is.matrix(A2)

# NB: is.vector(),  is.frame()


A3 = matrix( c(3,-1,2,1,5,4) )

A3 

is.vector(A3)   # R tells vector and matrix. 


A4 = matrix( c(3,-1,2,1,5,4), nrow=2) 


A5 = matrix( c(3,1, -1,5, 2,4), nrow=2)

A6 = matrix(  c(3,-1,2,1,5,4), nrow=2, byrow=TRUE)

# Transpose of a matrix

t(A1)


# scalar mumtiplication of a matrix  (We will study matrix multiplication later).
#  const * A

10 * A1




