# Example 12.12 on Page 699

data = read.table("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/T12-4.DAT")

X = data.matrix(data[,1:8])

cl4 = kmeans(X,4)
cl4

cl5 = kmeans(X,5)
cl5




