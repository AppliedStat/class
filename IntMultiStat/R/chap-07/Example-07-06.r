
# Example 7.6 on Page 380

data = read.table("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/T7-3.DAT")

x1 = data[[1]]
x2 = data[[2]]
y  = data[[3]]


# Interval estimates for a mean response and a future responses. 

LM = lm ( y ~ x1 + x2 )

 new = data.frame( x1=130, x2=7.5)
 alpha = 0.95 

 predict ( LM, newdata=new, interval="confidence", level=alpha)

 predict ( LM, newdata=new, interval="prediction", level=alpha)

