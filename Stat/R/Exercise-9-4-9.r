## ==========================
## Exercise 9.4-9 on Page 463 
## --------------------------

url = "https://raw.githubusercontent.com/appliedstat/class/master/Stat/R/Exercise-9-4-9.txt"
mydata = read.table(url, header=TRUE)

attach(mydata)
smoking = factor(smoking, levels=c("nonsmoker","moderate","heavy")) 
test    = factor(test,    levels=c("bicycle", "treadmill", "steptest"))

OUT = aov(time ~ smoking * test)

summary(OUT)


boxplot(time  ~ smoking * test)





