
#======================================================
# Example 9.4.1 on Page 456
#------------------------------------------------------

url = "https://raw.githubusercontent.com/appliedstat/class/master/Stat/R/Table-9-4-2.txt"
mydata = read.table(url, header=TRUE)

mydata$car = as.factor(mydata$car) 
mydata$gasoline = as.factor(mydata$gasoline)

OUT = aov(mileage ~ car + gasoline, data=mydata)
summary(OUT)



