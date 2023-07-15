# Example 4.15 on Page 190 

data = read.table("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/T4-3.DAT")

names(data) = c("X1", "X2", "X3", "X4")

pairs(data)


