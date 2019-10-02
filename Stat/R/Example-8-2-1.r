#======================================================
# 8.2-1 (very similar to Exercise 7.2-12)
#------------------------------------------------------
x = c( 0.8, 1.8, 1.0, 0.1, 0.9, 1.7, 1.0, 1.4, 0.9, 1.2, 0.5 )
y = c( 1.0, 0.8, 1.6, 2.6, 1.3, 1.1, 2.4, 1.8, 2.5, 1.4, 1.9, 2.0, 1.2) 

# It will give Welch's two sample t-test 
t.test(x,y, alternative="less")

# It will give traditional  two sample t-test 
t.test(x,y, alternative="less", var.equal=TRUE)

# Five number summary  (* can be different from the textbook results *)
summary(x)
summary(y)

# Box-whisker plots (side by side)
id = rep( c("X","Y"), c(length(x), length(y)) )
boxplot( c(x,y) ~ id )   # vertical mode
boxplot( c(x,y) ~ id, horizontal=TRUE )   # horizontal mode

id2 = rep( c("Y","X"), c(length(y), length(x)) )
boxplot( c(y,x) ~ id2, horizontal=TRUE )

id3 = factor( id , levels=c("Y", "X") )
boxplot( c(x,y) ~ id3, horizontal=TRUE )
