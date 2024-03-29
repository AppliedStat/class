#======================================================
# Example 9.3.1 on Page 447
#------------------------------------------------------

# Read the data from the URL

x = factor( rep( c("x1", "x2", "x3", "x4"), c(3,3,3,3) ) )
Obs = c(13, 8, 9,  15, 11, 13,  8, 12, 7, 11, 15, 10)

OUT = aov(Obs ~ x)

summary(OUT)

alpha = 0.05
qf(1-alpha, df1=3, df2=12-4)


