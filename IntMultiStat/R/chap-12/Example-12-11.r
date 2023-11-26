# Example 12.11 on Page 697

x1 = c(5, -1, 1, -3)
x2 = c(3,  1,-2, -2)

X = cbind(x1,x2)

kmeans(X,2)



# scatter plot
cl = kmeans(X,2)
plot(X, col=cl$cluster)
points(cl$centers, col = 1:2, pch = 3, cex = 2)




