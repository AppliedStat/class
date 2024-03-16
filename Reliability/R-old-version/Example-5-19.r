# =================================
# Example 5.19 on Page 310.
# =================================

source("https://raw.githubusercontent.com/statpnu/R/master/Rpp5.R")

#===================================

X = c(18.5, 20.0, 20.5, 21.5, 22.0, 22.5, 23.5, 24.0, 24.3, 24.6, 
      25.0, 25.3, 25.6, 26.0, 26.3, 26.7, 27.0, 28.0, 29.0, 30.0, 
      32.0, 33.0, rep(33,8) )
M = c(rep(1,22), rep(0,22) )

weibull.cm.EM (X, M)

Reparametrization( 5.105557, 2.607783e-08 )

