# =================================
# Example 1.3 on Page 13.
# =================================

data = c(70,150,250,360,485,650,855,1130,1540)
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

Rti = 1-Fti

fti = c(diff(Fti)/diff(ti), NA)

hti = fti / Rti

Hti = -log(Rti)

#===========================================
# Table 1.6 on Page 14
cbind(i, ti, ti1, Fti, Rti, fti, hti, Hti)

#-------------------------------------------
# Figure 1.6 on Page 13
  plot(ti, Rti, type="l")
#-------------------------------------------
# Figure 1.7 on Page 14
  plot(ti, fti, type="l")
  plot(ti, fti, type="l", xlim=c(0,1200) )
#-------------------------------------------
# Figure 1.8 on Page 14
  plot(ti, hti, type="l") 
  plot(ti, hti, type="l", xlim=c(0,1200), ylim=c(0,0.002))









