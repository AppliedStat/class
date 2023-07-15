# Example 9.10 on Page 50 (revisit Example 9.5)

data = read.table("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/T8-4.DAT")
X = data.matrix(data)

# MLE of factor loadings

OUT = factanal(X, factors=2, rotation="none")

OUT

L = loadings(OUT)    # or OUT$loadings


# MLE with rotation using varimax method 

OUT = factanal(X, factors=2, rotation="varimax")

# the same as the above (N.B.: different order)
varimax(L)


