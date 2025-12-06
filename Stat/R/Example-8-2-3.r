#======================================================
# Example 8.2-3 on Page 383
#  (very similar to 8.2.2 and Exercise 7.2-12)
#------------------------------------------------------
x = c(1071, 1076, 1070, 1083, 1082, 1067, 1078, 1080, 1075, 1084, 1075, 1080) 
y = c(1074, 1069, 1075, 1067, 1068, 1079, 1082, 1064, 1070, 1073, 1072, 1075)

nx = length(x)
ny = length(y)

Sp = sqrt(  ( (nx-1)*var(x) + (ny-1)*var(y) ) / (nx-1 + ny-1)  )

t.stat = (mean(x)-mean(y)) / ( Sp * sqrt(1/nx + 1/ny) )
t.stat 

# NB: df = 12 + 12 -2 = 22
approx( x=c(1.717, 2.074), y=c(0.05, 0.025), xout=t.stat)

2 * 0.02647004 * 100  # 5.29%

# It will give traditional two sample t-test 
t.test(x,y, alternative="two.sided", var.equal=TRUE)

# Five number summary  (* can be different from the textbook results *)
summary(x)
summary(y)

boxplot(y,x, names=c("Y","X"), horizontal=TRUE )

# id = rep( c("X","Y"), c(length(x), length(y)) )
# id3 = factor( id , levels=c("Y", "X") )
# boxplot( c(x,y) ~ id3, horizontal=TRUE )
