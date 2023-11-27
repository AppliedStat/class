#######################
# Using rQCC package
#######################

# install.packages("rQCC")
news(package="rQCC")

vignette("rcc", package="rQCC")
vignette("factors.cc", package="rQCC")

help(package="rQCC")

library("rQCC")

## ==========================
## Table 9.7-1
## --------------------------
help("factors.cc")

# A3
factors.cc(n=4, "A3")
factors.cc(n=5, "A3")
factors.cc(n=6, "A3")
factors.cc(n=8, "A3")
factors.cc(n=10,"A3")
factors.cc(n=20,"A3")

# B3
factors.cc(n=4, "B3")
factors.cc(n=5, "B3")
factors.cc(n=6, "B3")
factors.cc(n=8, "B3")
factors.cc(n=10,"B3")
factors.cc(n=20,"B3")

# B4
factors.cc(n=4, "B4")
factors.cc(n=5, "B4")
factors.cc(n=6, "B4")
factors.cc(n=8, "B4")
factors.cc(n=10,"B4")
factors.cc(n=20,"B4")

# A2
factors.cc(n=4, "A2")
factors.cc(n=5, "A2")
factors.cc(n=6, "A2")
factors.cc(n=8, "A2")
factors.cc(n=10,"A2")
factors.cc(n=20,"A2")

# D3
factors.cc(n=4, "D3")
factors.cc(n=5, "D3")
factors.cc(n=6, "D3")
factors.cc(n=8, "D3")
factors.cc(n=10,"D3")
factors.cc(n=20,"D3")

# D4
factors.cc(n=4, "D4")
factors.cc(n=5, "D4")
factors.cc(n=6, "D4")
factors.cc(n=8, "D4")
factors.cc(n=10,"D4")
factors.cc(n=20,"D4")


## ==========================
## Example 9.7-1 on Page 478 
## --------------------------
help("rcc")

# Data from Table 9.7.2
 x1 = c(1.2, 1.8, 1.7, 1.3, 1.4) ## 1.480 0.259 0.60
 x2 = c(1.5, 1.2, 1.0, 1.0, 1.8) ## 1.300 0.346 0.80
 x3 = c(0.9, 1.6, 1.0, 1.0, 1.0) ## 1.100 0.283 0.70
 x4 = c(1.3, 0.9, 0.9, 1.2, 1.0) ## 1.060 0.182 0.40
 x5 = c(0.7, 0.8, 0.9, 0.6, 0.8) ## 0.760 0.114 0.30
 x6 = c(1.2, 0.9, 1.1, 1.0, 1.0) ## 1.040 0.104 0.30
 x7 = c(1.1, 0.9, 1.1, 1.0, 1.4) ## 1.100 0.187 0.50
 x8 = c(1.4, 0.9, 0.9, 1.1, 1.0) ## 1.060 0.207 0.50
 x9 = c(1.3, 1.4, 1.1, 1.5, 1.6) ## 1.380 0.192 0.50
x10 = c(1.6, 1.5, 1.4, 1.3, 1.5) ## 1.460 0.114 0.30
DATA = rbind(x1, x2, x3, x4, x5, x6, x7, x8, x9, x10)
#

# Table 9.7.2 (xbar, s and R)
 xbar = apply(DATA, 1, mean)
 s    = apply(DATA, 1, sd)
 R    = apply(DATA, 1, function(x) diff(range(x)) )

# ==================
# xbar chart with S (default in rcc function)
# ==================
rcc(DATA)

CC = rcc(DATA)
print(CC)
summary(CC) # More detailed information (advanced)
plot(CC)    # Figure 9.7-2 (a)

# double-check the above
xbarbar = mean(xbar) 
sbar = mean(s)
A3 = 1.43 # when n=5 (from Table 9.7-1)
A3 = factors.cc(n=5, "A3")
UCL = xbarbar + A3 * sbar 
 CL = xbarbar
LCL = xbarbar - A3 * sbar 
c(LCL, CL , UCL)

# ==================
# S chart 
# ==================
rcc(DATA, type="S")

CC = rcc(DATA, type="S")
print(CC)
 plot(CC)   # Figure 9.7-2 (b)


# double-check
B3 = 0    # when n=5  (from Table 9.7-1)
B4 = 2.09

B3 = factors.cc(n=5, "B3")
B4 = factors.cc(n=5, "B4")


UCL = sbar * B4
CL  = sbar
LCL = sbar * B3
c(LCL, CL , UCL)


