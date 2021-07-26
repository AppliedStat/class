## ==========================
## Example 6.1-4 on Page 240
## --------------------------
data = c( rep(2,12), rep(3,4), rep(4,3), rep(5,4), rep(6,4),
          8, 8, 9, 15, 17, 22, 23, 24, 24, 25, 27, 32, 43 )

Breaks = c(1.5, 2.5, 6.5, 29.5, 49.5 )

# Tabulation
 freq =  table( cut(data, breaks=Breaks ) )
 cbind(freq) 

# histogram
  hist(data, breaks=Breaks, prob=TRUE)
