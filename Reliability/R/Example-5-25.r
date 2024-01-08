# =================================
# Example 5.25 on Page 320.
# =================================

source("https://raw.githubusercontent.com/statpnu/R/master/Rpp5.R")

#===================================

X = c(30, 37, 42, 45, 47, 48, 50, 50, 50, 50)

M = c(rep(1,7), rep(0,3) )

LX = log(X)

norm.cm.EM (LX, M)

# NOTE: the textbook used an approximation method 
#       by Sarhan and Greenberg (See Section 5.10.2).

