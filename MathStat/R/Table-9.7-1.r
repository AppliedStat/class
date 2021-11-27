
A3 = function(n) {
     3/(sqrt(2/(n-1))*gamma(n/2)/gamma(n/2-1/2)*sqrt(n))
}


A3(4)
A3(5)
A3(6)
A3(8)
A3(10)
A3(20)



#========================================================
# Using rQCC R Package
#    See https://cran.r-project.org/web/packages/rQCC/
#
# If not installed, install it as below:
# install.packages("rQCC")
#========================================================


# Call library as below:
library("rQCC")


factors.cc(4, factor="A3")
factors.cc(5, factor="A3")
factors.cc(6, factor="A3")
factors.cc(8, factor="A3")
factors.cc(10,factor="A3")
factors.cc(20,factor="A3")



