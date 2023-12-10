## ==========================
## Exercise 9.4-7 on Page 462 
## --------------------------

url = "https://raw.githubusercontent.com/appliedstat/class/master/Stat/R/Exercise-9-4-7.txt"
mydata = read.table(url, header=TRUE)

attach(mydata)
Car         = factor(Car) 
Gasoline    = factor(Gasoline)

OUT = aov(MPG ~ Car * Gasoline)

summary(OUT)

boxplot(MPG ~ Car * Gasoline)



