# =================================
# Example 4.20 on Page 281.
# =================================

# Original data set below seems wrong: 
#  c(10,20,30,40,50,60,70,80,93,111)

data = c(10,20,30,40,50,60,70,80,90,103)
n = length(data)

i  = 0:n
ti = c(0, sort(data) )
ti1= c(sort(data), NA )

# ---------------------------------------------
# NOTE: Herd-Johnson (a=0)
#       Bernard / Median rank (a=0.3), 
#       Blom (a=3/8), 
# https://en.wikipedia.org/wiki/Q%E2%80%93Q_plot 
# ---------------------------------------------

Fti = c(0, ppoints(n,a=0)) # Herd-Johnson 
# Textbook said median rank is used. Herd-Johnson is actually used.

Rti = 1-Fti

fti = c(diff(Fti)/diff(ti), NA)

hti = fti / Rti

cbind(ti, hti*1000)

#===========================================
# Table 4.3 on Page 282
# Table 4.3 in the textbook seems wrong. 
cbind(i, ti, ti1, Fti, Rti, fti, hti, hti*1000)

plot(ti, hti)  ## quadratic model seems better.

lm (hti ~ ti)

# The above lm() is the same as below b/c R removes NA automatically
y1 = hti[1:10]
x1 = ti[1:10]

lm (y1 ~ x1)

LM = lm (y1 ~ x1)  

plot(x1,y1)
abline(LM)

# Advanced 
# Using the quadratic model.
LM2 = lm (y1 ~ I(x1^2) )
LM2 
plot(x1,y1)
tt = seq(0,100,l=101)
lines( tt, 8.855e-03 +  3.575e-06 * tt^2 )



