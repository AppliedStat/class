# Example 8.4 on Page 445

data = read.table("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/T6-9.dat")

# We need this because we will consider only male turtles.
index = data[[4]] == "male"

x1 = log(data[[1]][index])
x2 = log(data[[2]][index])
x3 = log(data[[3]][index])

X = cbind(x1, x2, x3)

colMeans(X)

var(X)

OUT = prcomp(X)

# Cumulative Proportion (%)
cumsum( OUT$sdev^2 )  / sum( OUT$sdev^2 ) * 100


# Note: compare prcomp(X) and eigen( var(X) )
summary(OUT)


# A scree plot with eigenvalues
eigenvalues = OUT$sdev^2
plot(eigenvalues, type="l")
points(eigenvalues, pch=20 )  # cosmetic 

# A scree plot using screeplot( ) #- the similar to the above
screeplot(OUT)
screeplot(OUT, type="lines" )  # cosmetic 



