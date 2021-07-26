## ==========================
## Example 2.6-1 on Page 90 
## Compare with Table III in Appendix B
## --------------------------

# ----------------------------
# P[ X <= 6 ]  with lambda = 5
xx = 0:6
dpois ( xx, lambda=5 )

sum( dpois ( xx, lambda=5 ) )

ppois(6, lambda=5)

# ----------------------------
# P[ X > 5 ] = 1 - P[ X <= 5 ] 
1 - ppois(5, lambda=5)

# Use the upper tail. 
ppois(5, lambda=5, lower.tail=FALSE)

# ----------------------------
# P[ X = 6 ] 
dpois(6, lambda=5)

ppois(6, lambda=5) - ppois(5, lambda=5)
