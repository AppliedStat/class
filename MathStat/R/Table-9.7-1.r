
#========================================================
A3 = function(n) {
     3/(sqrt(2/(n-1)) * gamma(n/2)/gamma(n/2-1/2) * sqrt(n))
}
#--------------------------------------------------------
A3new = function(n) {
     gammapart = exp(lgamma(n/2)-lgamma(n/2-1/2))
     3/(sqrt(2/(n-1)) * gammapart * sqrt(n))
}
#--------------------------------------------------------
# Table 9.7-1 
A3(4)
A3(5)
A3(6)
A3(8)
A3(10)
A3(20)


c(A3(10), A3new(10) )
c(A3(200), A3new(200) )  # Large
c(A3(300), A3new(300) )  # Big 
c(A3(400), A3new(400) )  # Huge
c(A3(500), A3new(500) )  # Huge
c(A3(900), A3new(900) )  # Huge


#========================================================
c4 = function(n) { sqrt(2/(n-1)) * gamma(n/2)/gamma(n/2-1/2) }
c4new = function(n) { 
      gammapart = exp(lgamma(n/2)-lgamma(n/2-1/2))
      sqrt(2/(n-1)) * gammapart  
}

#
 plot(2:50, c4new(2:50), col="red", ylim=c(0.9,1)) 
lines(2:50, c4(2:50),    lty=1, ylim=c(0.9,1)) 
#

c(c4(300), c4new(300) )  # Big 
c(c4(400), c4new(400) )  # Huge
c(c4(500), c4new(500) )  # Huge
c(c4(900), c4new(900) )  # Huge


#========================================================
B3 = function(n) { max(1-3*sqrt(1/c4(n)^2-1),0) }
B4 = function(n) { 1 + 3*sqrt(1/c4(n)^2-1) }
#--------------------------------------------------------
# Table 9.7-1 
c(B3(4) , B4(4) )
c(B3(5) , B4(5) )
c(B3(6) , B4(6) )
c(B3(8) , B4(8) )
c(B3(10), B4(10))
c(B3(20), B4(20))


#========================================================
# Using rQCC R Package
#    See https://cran.r-project.org/web/packages/rQCC/
#
# If not installed, install it as below:
# install.packages("rQCC")
#========================================================


# Call library as below:
library("rQCC")


#--------------------------------------------------------
# Table 9.7-1 
factors.cc(4, factor="A3")
factors.cc(5, factor="A3")
factors.cc(6, factor="A3")
factors.cc(8, factor="A3")
factors.cc(10,factor="A3")
factors.cc(20,factor="A3")


#--------------------------------------------------------
# Table 9.7-1 
factors.cc(4, factor="B3")
factors.cc(5, factor="B3")
factors.cc(6, factor="B3")
factors.cc(8, factor="B3")
factors.cc(10,factor="B3")
factors.cc(20,factor="B3")

#--------------------------------------------------------
# Table 9.7-1 
factors.cc(4, factor="B4")
factors.cc(5, factor="B4")
factors.cc(6, factor="B4")
factors.cc(8, factor="B4")
factors.cc(10,factor="B4")
factors.cc(20,factor="B4")

#########################################################


#--------------------------------------------------------
# Table 9.7-1 
factors.cc(4, factor="A2")
factors.cc(5, factor="A2")
factors.cc(6, factor="A2")
factors.cc(8, factor="A2")
factors.cc(10,factor="A2")
factors.cc(20,factor="A2")


#--------------------------------------------------------
# Table 9.7-1 
factors.cc(4, factor="D3")
factors.cc(5, factor="D3")
factors.cc(6, factor="D3")
factors.cc(8, factor="D3")
factors.cc(10,factor="D3")
factors.cc(20,factor="D3")


#--------------------------------------------------------
# Table 9.7-1 
factors.cc(4, factor="D4")
factors.cc(5, factor="D4")
factors.cc(6, factor="D4")
factors.cc(8, factor="D4")
factors.cc(10,factor="D4")
factors.cc(20,factor="D4")


