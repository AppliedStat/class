# Example 8.5 on Page 451 

data = read.table("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/T8-4.DAT")

# We need this because we will consider only male turtles.


X = data.matrix(data)

colMeans(X)

cor(X)


# using prcomp()
OUT1 = prcomp(X, scale.=TRUE)  ## Use R matrix 
summary(OUT1)


# using princomp()
OUT2 = princomp(X, cor=TRUE)   ## Use R matrix 
summary(OUT2)
# Note: in this case, both prcomp and princomp give the same answer because R is used. 


# using scale() and prcomp
Z = scale(X)  # Standardize each column 
prcomp(Z)





