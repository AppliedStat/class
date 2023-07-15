#

Sigma = matrix(c(4,1,0, 1,3,0, 0,0,2), nrow=3)

Sigma[ 1:2, 1:2 ]

Sigma[ 1:3, 1:3 ]

Sigma[1:2, 3]   # vector

Sigma[3, 1:2]   # NB: vector (not row vector)

Sigma[ c(1,3), c(1,3) ]



