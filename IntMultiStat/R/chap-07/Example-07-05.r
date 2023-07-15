
# Example 7.5 on Page 376

data = read.table("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/T7-2.DAT")

x1 = data[[1]]
x2 = data[[2]]
y  = data[[3]]

f1 = factor(x1) 
f2 = factor(x2) 


# Full model 
AOV = aov( y ~ f1 * f2 )

AOV
summary(AOV)


# Reduced model

AOV.reduced = aov( y ~ f1 + f2 )  ## NB: + is used (not interaction) instead of * 

AOV.reduced
summary(AOV.reduced)

# F-test stat. for testing Full model vs. Reduced model

anova(AOV.reduced, AOV)






