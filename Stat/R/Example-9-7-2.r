## ==========================
## Example 9.7-2 on Page 480 
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

RANGE = function(x) {diff(range(x))}
R = apply(DATA, 1, RANGE)
xbar = apply(DATA, 1, mean)


# ==================
# xbar chart with R 
# ==================
A2 = 0.58

xbarbar = mean(xbar)
Rbar = mean(R)

UCL = xbarbar + A2 * Rbar
 CL = xbarbar
LCL = xbarbar - A2 * Rbar

c(LCL, CL , UCL)




# ==================
# R chart 
# ==================
D3 = 0    # when n=5 
D4 = 2.11

Rbar = mean(R)

LCL = Rbar * D3
CL  = Rbar
UCL = Rbar * D4

c(LCL, CL, UCL)

