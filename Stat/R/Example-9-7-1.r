## ==========================
## Example 9.7-1 on Page 478 
## --------------------------

# Data
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

xbar = apply(DATA, 1, mean)

s    = apply(DATA, 1, sd)

RANGE = function(x) {diff(range(x))}
R = apply(DATA, 1, RANGE)

cbind(DATA, xbar, s, R)
cbind(DATA, xbar, round(s,3), R)



# ==================
# xbar chart with S 
# ==================
xbarbar = mean(xbar) 
sbar = mean(s)

A3 = 1.43 # when n=5

UCL = xbarbar + A3 * sbar 
 CL = xbarbar
LCL = xbarbar - A3 * sbar 

c(LCL, CL , UCL)





# ==================
# S chart 
# ==================
B3 = 0    # when n=5
B4 = 2.09

UCL = sbar * B4
CL  = sbar
LCL = sbar * B3

c(LCL, CL , UCL)





# ==================
# xbar chart with R 
# ==================
D3 = 0    # when n=5 
D4 = 2.11

Rbar = mean(R)

LCL = Rbar * D3
CL  = Rbar
UCL = Rbar * D4

c(LCL, CL, UCL)


