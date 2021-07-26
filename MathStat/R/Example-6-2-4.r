## ==========================
## Example 6.2-4 on Page 251 
## --------------------------

data = c(
4.90, 5.06, 5.07, 5.08, 5.15, 5.17, 5.18, 5.19, 5.24, 5.25, 
5.25, 5.25, 5.25, 5.27, 5.27, 5.27, 5.27, 5.28, 5.28, 5.28,
5.29, 5.30, 5.30, 5.30, 5.30, 5.31, 5.31, 5.31, 5.31, 5.31,
5.32, 5.32, 5.33, 5.34, 5.35, 5.35, 5.35, 5.36, 5.37 )


summary(data) 
fivenum(data)

boxplot(data)

boxplot(data, horizontal=TRUE)   # A little bit different from the textbook

boxplot(data, horizontal=TRUE, range=10)  # set range=big value

