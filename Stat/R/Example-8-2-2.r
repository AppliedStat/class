#======================================================
# Example 8.2-2 (very similar to 8.2.1 and Exercise 7.2-12)
#------------------------------------------------------
x = c(1071, 1076, 1070, 1083, 1082, 1067, 1078, 1080, 1075, 1084, 1075, 1080) 
y = c(1074, 1069, 1075, 1067, 1068, 1079, 1082, 1064, 1070, 1073, 1072, 1075)

# It will give traditional  two sample t-test 
t.test(x,y, alternative="two.sided", var.equal=TRUE)

# Five number summary  (* can be different from the textbook results *)
summary(x)
summary(y)

boxplot(y,x, names=c("Y","X"), horizontal=TRUE )

# id = rep( c("X","Y"), c(length(x), length(y)) )
# id3 = factor( id , levels=c("Y", "X") )
# boxplot( c(x,y) ~ id3, horizontal=TRUE )
