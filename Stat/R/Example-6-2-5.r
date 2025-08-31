## ==========================
## Example 6.2-5 on Page 263 
## --------------------------
## Note: Example 6.2-4 on Page 261

data = c(
4.90, 5.06, 5.07, 5.08, 5.15, 5.17, 5.18, 5.19, 5.24, 5.25, 
5.25, 5.25, 5.25, 5.27, 5.27, 5.27, 5.27, 5.28, 5.28, 5.28,
5.29, 5.30, 5.30, 5.30, 5.30, 5.31, 5.31, 5.31, 5.31, 5.31,
5.32, 5.32, 5.33, 5.34, 5.35, 5.35, 5.35, 5.36, 5.37 )


summary(data)
fivenum(data)


diff( range(data) )

IQR(data)


boxplot(data)

boxplot(data, horizontal=TRUE)   # See Figure 6.2-3 on Page 253

boxplot(data, horizontal=TRUE, notch=TRUE)

