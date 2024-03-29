#======================================================
# Example 9.3.2 on Page 449
#------------------------------------------------------

# Read the data from the URL
url = "https://raw.githubusercontent.com/appliedstat/class/master/Stat/R/Table-9-3-5.txt"
mydata = read.table(url, header=TRUE)

# Wrong version (without factor)
par(mfrow=c(2,1))

boxplot(force ~ position, horizontal=TRUE, data=mydata, xlab="force", ylab="position")

boxplot(force ~ position, at=rev(1:5), horizontal=TRUE, xlab="force", ylab="position", data=mydata)

OUT = aov(force ~ position, data=mydata)
summary(OUT)

#
# Correct version (with factor)
#
url = "https://raw.githubusercontent.com/appliedstat/class/master/Stat/R/Table-9-3-5.txt"
mydata = read.table(url, header=TRUE)
mydata$position = factor(mydata$position) 

par(mfrow=c(2,1))

boxplot(force ~ position, horizontal=TRUE, data=mydata, xlab="force", ylab="position")

boxplot(force ~ position, at=rev(1:5),horizontal=T, xlab="force", ylab="position", data=mydata)

OUT = aov(force ~ position, data=mydata)
summary(OUT)

par(mfrow=c(2,2))
plot(OUT)

#
# Correct version (with factor)
#
url = "https://raw.githubusercontent.com/appliedstat/class/master/Stat/R/Table-9-3-5.txt"
mydata = read.table(url, header=TRUE)
attach(mydata) # For more convenience
position = factor(position) 

par(mfrow=c(2,1))

boxplot(force ~ position, horizontal=TRUE, xlab="force", ylab="position")

boxplot(force ~ position, at=rev(1:5), horizontal=TRUE, xlab="force", ylab="position")

OUT = aov(force ~ position)
summary(OUT)

par(mfrow=c(2,2))
plot(OUT)
