## ==========================
## Example 3.3-3 on Page 116
## --------------------------


# (1) ---------------------------
pnorm(1.24, mean=0, sd=1) 
pnorm(1.24) # The same as the above


# (2) ---------------------------
pnorm(2.37) - pnorm(1.24)


# (3) ---------------------------
pnorm(-1.24) - pnorm(-2.37)  # The same as the above


# (4) ---------------------------
1-pnorm(1.24)
pnorm(1.24, lower.tail=FALSE) # The same as the above


# (5) ---------------------------
pnorm(-2.14)
pnorm(2.14, lower.tail=FALSE)


# (6) ---------------------------
pnorm(0.77) - pnorm(-2.14) 

