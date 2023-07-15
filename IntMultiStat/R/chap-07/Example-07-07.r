
# Example 7.7 on Page 383

data = read.table("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/T7-3.DAT")

x1 = data[[1]]
x2 = data[[2]]
y  = data[[3]]


# Interval estimates for a mean response and a future responses. 

LM = lm ( y ~ x1 + x2 )

e = resid(LM)


par( mfrow=c(1,3) )

plot(x1, e)
abline(h=0)

plot(x2, e)
abline(h=0)

plot(fitted(LM), e)
abline(h=0)
