# ========================================================================
# Example 8.2-2 on Page 376 in 
#         Hogg, Tanis and Zimmerman (Engr. Stat Textbook)
# Packaging machine with filler heads 
# ========================================================================


# ========================================================================
# Reading Data 
# ========================================================================
Y1 = c(1071, 1076, 1070, 1083, 1082, 1067, 1078, 1080, 1075, 1084, 1075, 1080)
Y2 = c(1074, 1069, 1075, 1067, 1068, 1079, 1082, 1064, 1070, 1073, 1072, 1075)

boxplot(Y1,Y2, names=c("X","Y") )

# ========================================================================
# Two sample t-test (traditional  two sample t-test)
# ========================================================================
t.test(Y1,Y2, alternative="two.sided", var.equal=TRUE)


# ========================================================================
# ANOVA with aov() function with factor 
# ========================================================================
group = factor( c(rep("Y1",12), rep("Y2",12)) )
Y = c(Y1,Y2)

myaov = aov(Y ~ group)
summary(myaov)

# p-value only
summary(myaov)[[1]][["Pr(>F)"]][1]
plot(Y~group)

# ----------------------------------------------
# Parameter Estimation
# ----------------------------------------------
mui = tapply(Y, group, mean)
tau = mui - mean(Y)
cbind(mui, tau)

# Diagnostic
# par ( mfrow=c(2,2) )
# plot(myaov)

# ========================================================================
# ANOVA with lm() function with factor
# ========================================================================
group = factor( c(rep("Y1",12), rep("Y2",12)) )
mylm = lm (Y ~ group)
anova(mylm)    # same as the summary(myaov) above
summary(mylm)  # ANOVA is OK, but parameter estimates are not

# ========================================================================
# Regression: Cell-means coding
# ========================================================================
z1 =  c(rep(1,12), rep(0,12))
z2 =  c(rep(0,12), rep(1,12))

# under H0
mylm0 = lm( Y ~ 1 )
anova(mylm0)

# under H1
mylm1 = lm( Y ~ 0 + z1 + z2 )
mylm1
anova(mylm1)


# ----------------------------------------------
# Parameter Estimation
# ----------------------------------------------
mu0 = mean(Y)
mui = coef(mylm1)
tau = mui - mu0 
cbind(mui, tau)

# ----------------------------------------------
# Difference between H0 and H1  (Note: anova() function)
# ----------------------------------------------
anova(mylm0, mylm1)

# p-value only
anova(mylm0, mylm1)[["Pr(>F)"]][2]


# ========================================================================
# Regression: Effect coding (factor-effect model)
# ========================================================================
z1 =  c(rep(1,12), rep(-1,12))

# under H0
mylm0 = lm( Y ~ 1 )
anova(mylm0)


# under H1 (note: with intercept)
mylm1 = lm( Y ~ 1 + z1 )
mylm1
anova(mylm1)


# ----------------------------------------------
# Parameter Estimation
# ----------------------------------------------
mu0 = coef(mylm1)[1]
tau = c( coef(mylm1)[2], -coef(mylm1)[2] )
mui = c(mu0+tau)
cbind(mui, tau)

# ----------------------------------------------
# Difference between H0 and H1
# ----------------------------------------------
anova(mylm0, mylm1)

# p-value only
anova(mylm0, mylm1)[["Pr(>F)"]][2]

# Diagnostic
# par ( mfrow=c(2,2) )
# plot(mylm1)
# ==============================================


