
# Let
A = matrix( c(1,2, -2,4, 3,-1), nrow=2)

b = c(7, -3, 6)

c = c(5, 8, -4)

d = c(2,9)



# Ab
A %*% b



# b'c
t(b) %*% c

sum ( b*c )


# bc'

b %*% t(c)


# d'Ab

t(d) %*% A %*% b





