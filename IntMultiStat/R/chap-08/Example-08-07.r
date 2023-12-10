# Example 8.7 on Page 454

data = read.table("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/T6-9.dat")

# We need this because we will consider only male turtles.
index = (data[[4]] == "male")

x1 = log(data[[1]][index])
x2 = log(data[[2]][index])
x3 = log(data[[3]][index])

X = cbind(x1, x2, x3)

Xbar = colMeans(X)

OUT = prcomp(X)

OUT$rotation 


y1hat =  OUT$rotation[1,1]*(x1-Xbar[1]) +  OUT$rotation[2,1]*(x2-Xbar[2]) +  OUT$rotation[3,1]*(x3-Xbar[3])
y2hat = -1 *( OUT$rotation[1,2]*(x1-Xbar[1]) +  OUT$rotation[2,2]*(x2-Xbar[2]) +  OUT$rotation[3,2]*(x3-Xbar[3]) )

qqnorm(y2hat)


plot( y2hat, y1hat )

