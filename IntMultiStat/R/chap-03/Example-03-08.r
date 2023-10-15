# Example 3.8 

S1 = matrix(c(5,4,4,5), ncol=2)

S2 = matrix(c(3,0,0,3), ncol=2)

S3 = matrix(c(5,-4,-4,5), ncol=2)


# Find the correlation from the above variance-covariance matrix
cov2cor(S1)
cov2cor(S2)
cov2cor(S3)


# Eigenvalues and Eigenvectors
E1 = eigen(S1)
E2 = eigen(S2)
E3 = eigen(S3)

E1
E2
E3


# E1 
evs   = sqrt(E1$values)
evecs = E1$vectors

a = evs[1]; b = evs[2]
x0 = 0; y0 = 0
alpha = atan(evecs[, 1][2] / evecs[, 1][1])
theta = seq(0, 2 * pi, length=(1000))

x = x0 + a * cos(theta) * cos(alpha) - b * sin(theta) * sin(alpha)
y = y0 + a * cos(theta) * sin(alpha) + b * sin(theta) * cos(alpha)

plot(x, y, type = "l", asp = 1)
arrows(0, 0, a * evecs[ , 1][1], a * evecs[ , 1][2])
arrows(0, 0, b * evecs[ , 2][2], b * evecs[ , 2][1])


# E2 
evs   = sqrt(E2$values)
evecs = E2$vectors

a = evs[1]; b = evs[2]
x0 = 0; y0 = 0
alpha = atan(evecs[, 1][2] / evecs[, 1][1])
theta = seq(0, 2 * pi, length=(1000))

x = x0 + a * cos(theta) * cos(alpha) - b * sin(theta) * sin(alpha)
y = y0 + a * cos(theta) * sin(alpha) + b * sin(theta) * cos(alpha)

plot(x, y, type = "l", asp = 1)
arrows(0, 0, a * evecs[ , 1][1], a * evecs[ , 1][2])
arrows(0, 0, -b * evecs[ , 2][1], -b * evecs[ , 2][2])


# E3 
evs   = sqrt(E3$values)
evecs = E3$vectors

a = evs[1]; b = evs[2]
x0 = 0; y0 = 0
alpha = atan(evecs[, 1][2] / evecs[, 1][1])
theta = seq(0, 2 * pi, length=(1000))

x = x0 + a * cos(theta) * cos(alpha) - b * sin(theta) * sin(alpha)
y = y0 + a * cos(theta) * sin(alpha) + b * sin(theta) * cos(alpha)

plot(x, y, type = "l", asp = 1)
arrows(0, 0, a * evecs[ , 1][1], a * evecs[ , 1][2])
arrows(0, 0,-b * evecs[ , 2][2],-b * evecs[ , 2][1])

