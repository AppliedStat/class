## ==========================
## Exercise 9.4-5 on Page 462 
## --------------------------

url = "https://raw.githubusercontent.com/appliedstat/class/master/Stat/R/Exercise-9-4-5.txt"
mydata = read.table(url, header=TRUE)

attach(mydata)
Attribute1   = factor(Attribute1) 
Attribute2   = factor(Attribute2, levels=c("M", "C", "F", "O")) 

OUT = aov(Food ~ Attribute1 * Attribute2)

summary(OUT)

boxplot(Food ~ Attribute1 * Attribute2)



