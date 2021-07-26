## ==========================
## Example 6.1.1 on Page 234
## --------------------------
data = c( 20.5, 20.7, 20.8, 21.0, 21.0, 21.4, 21.5, 22.0, 22.1, 22.5, 
          22.6, 22.6, 22.7, 22.7, 22.9, 22.9, 23.1, 23.3, 23.4, 23.5, 
          23.6, 23.6, 23.6, 23.9, 24.1, 24.3, 24.5, 24.5, 24.8, 24.8, 
          24.9, 24.9, 25.1, 25.1, 25.2, 25.6, 25.8, 25.9, 26.1, 26.7 )

# Make tally table
#  Breaks = c(20.45, 23.35, ...
 Breaks = seq(20.45, 26.75, by=0.9)

 table( cut(data, breaks=Breaks ) )
