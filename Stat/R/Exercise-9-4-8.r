## ==========================
## Exercise 9.4-8 on Page 462
## --------------------------

url = "https://raw.githubusercontent.com/appliedstat/class/master/Stat/R/Exercise-9-4-8.txt"
mydata = read.table(url, header=TRUE)

attach(mydata)

Gender = factor(Gender)
Age    = factor(Age, levels=c("U50", "A50") )

OUT = aov(Cholesterol ~ Gender * Age)

summary(OUT)


boxplot(Cholesterol ~ Gender * Age)



