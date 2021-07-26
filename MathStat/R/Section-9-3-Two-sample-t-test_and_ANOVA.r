#======================================================
# Recall Example 8.2-2 from 
#         Hogg, Tanis and Zimmerman (Engr. Stat Textbook)
# Packaging machine with filler heads 
#------------------------------------------------------
x = c(1071, 1076, 1070, 1083, 1082, 1067, 1078, 1080, 1075, 1084, 1075, 1080)
y = c(1074, 1069, 1075, 1067, 1068, 1079, 1082, 1064, 1070, 1073, 1072, 1075)

# ==============================================
# t-test  (traditional  two sample t-test)
# ==============================================
t.test(x,y, alternative="two.sided", var.equal=TRUE)

# ==============================================
# AOV-based 
# ==============================================
group = as.factor( c(rep(1,12), rep(2,12)) )

Yall = c(x,y)

myaov = aov(Yall ~ group)
summary(myaov)

# p-value only
summary(myaov)[[1]][["Pr(>F)"]][1]

plot(Yall~group)

mui = tapply(Yall, group, mean)
tau = mui - mean(Yall)
cbind(mui, tau)

# Diagonostic
par ( mfrow=c(2,2) )
plot(myaov)



#======================================================
# Recall Homework (Exercise 8.2-6 on Page 380)
#------------------------------------------------------
x = c(111, 120, 139, 136, 138, 149, 143, 145, 111, 123)
y = c(152, 155, 133, 134, 119, 155, 142, 146, 157, 149)

t.test(x,y,  alternative="two.sided", var.equal=TRUE   )

        Two Sample t-test
data:  x and y
t = -2.1508, df = 18, p-value = 0.04533
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -25.1057228  -0.2942772
sample estimates:
mean of x mean of y 
    131.5     144.2 

#--------------------------
# Analyze again using ANOVA
#--------------------------
Observations = c(x,y)
Stud =  c(rep("No3",length(x)), rep("No4",length(y)) )
Stud = as.factor(Stud)

aov (  Observations ~ Stud )
myaov = aov (  Observations ~ Stud )
summary(myaov)

#======================================================
# Recall Example 8.2.1 on Page 374 
#   Note: it is slightly different b/c H1: two-sided. 
#------------------------------------------------------
x = c( 0.8, 1.8, 1.0, 0.1, 0.9, 1.7, 1.0, 1.4, 0.9, 1.2, 0.5 )
y = c( 1.0, 0.8, 1.6, 2.6, 1.3, 1.1, 2.4, 1.8, 2.5, 1.4, 1.9, 2.0, 1.2)

# It will give traditional  two sample t-test
t.test(x,y, var.equal=TRUE)


xbar = mean(x)
ybar = mean(y)
sx2 = var(x)
sy2 = var(y)
n1 = length(x) 
n2 = length(y) 

sp =  sqrt( ((n1-1)*sx2 + (n2-1)*sy2) / (n1+n2-2) )

(xbar-ybar) / ( sp* sqrt(1/n1+1/n2) )



#--------------------------
# Analyze again using ANOVA
#--------------------------
Observations = c(x,y)
Hormone =  c(rep("X",length(x)), rep("Y",length(y)) )
Hormone = as.factor(Hormone)

aov (  Observations ~ Hormone )
myaov = aov (  Observations ~ Hormone )
summary(myaov)



#======================================================
# Recall Homework (Exercise 8.1-12 on Page 372)
#   Note: it is slightly different b/c H1: two-sided. 
#------------------------------------------------------
x = c(265, 272, 246, 260, 274, 263, 255, 258, 276, 274,
      274, 269, 244, 212, 235, 254, 224 )
y = c(252, 276, 243, 246, 275, 246, 244, 245, 259, 260,
      267, 267, 251, 222, 235, 255, 231 )

t.test(x,y, mu=0, paired=TRUE  )

        Paired t-test

data:  x and y
t = 2.162, df = 16, p-value = 0.04611
alternative hypothesis: true difference in means is not equal to 0

#--------------------------
# Analyze again using ANOVA
#--------------------------
Observations = c(x,y)
Ball   =  c(rep("A",length(x)), rep("B",length(y)) )
Golfer =  as.factor( c(1:length(x),  1:length(y)) )   # Blocking
Distance = c(x,y)

myaov = aov (Distance ~ Ball + Golfer)

summary(myaov)

