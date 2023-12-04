#======================================================
# Example 9.3.2 on Page 449
#------------------------------------------------------

url = "https://raw.githubusercontent.com/AppliedStat/class/master/MathStat/R/Table-9-3-5.txt"


# Read the data from the URL
mydata = read.table(url, header=TRUE)

# Wrong version (without as.factor)
par(mfrow=c(2,1))

boxplot(force ~ position, horizontal=TRUE, data=mydata, xlab="force", ylab="position")

boxplot(force ~ position, at=rev(1:5), horizontal=TRUE, xlab="force", ylab="position", data=mydata)

OUT = aov(force ~ position, data=mydata)
summary(OUT)

#
# Correct version (with as.factor)
#
mydata = read.table(url, header=TRUE)
mydata$position = as.factor(mydata$position) 

par(mfrow=c(2,1))

boxplot(force ~ position, horizontal=TRUE, data=mydata, xlab="force", ylab="position")

boxplot(force ~ position, at=rev(1:5),horizontal=T, xlab="force", ylab="position", data=mydata)

OUT = aov(force ~ position, data=mydata)
summary(OUT)

par(mfrow=c(2,2))
plot(OUT)

#
# Correct version (with as.factor)
#
mydata = read.table(url, header=TRUE)
attach(mydata) # For more convenience
position = as.factor(position) 

par(mfrow=c(2,1))

boxplot(force ~ position, horizontal=TRUE, xlab="force", ylab="position")

boxplot(force ~ position, at=rev(1:5), horizontal=TRUE, xlab="force", ylab="position")

OUT = aov(force ~ position)
summary(OUT)

par(mfrow=c(2,2))
plot(OUT)
