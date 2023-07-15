
# Example 7.4 on Page 372

data = read.table("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/T7-1.DAT")

x1 = data[[1]]
x2 = data[[2]]
y  = data[[3]]

LM = lm( y ~ x1 + x2 )


summary(LM)

anova(LM)





