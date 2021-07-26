## ==========================
## Example 6.1-5 on Page 241
## --------------------------
data = c(
30, 17, 65,  8, 38, 35,  4, 19,   7, 14, 12,  4,  5,  4,  2, 
 7,  5, 12, 50, 33, 10, 15,  2,  10,  1,  5, 30, 41, 21, 31, 
 1, 18, 12,  5, 24,  7,  6, 31,   1,  3,  2,  2,  1, 30,  2,
 1,  3, 12, 12,  9, 28,  6, 50,  63,  5, 17, 11, 23,  2, 46,
90, 13, 21, 55, 43,  5, 19, 47,  24,  4,  6, 27,  4,  6, 37, 
16, 41, 68,  9,  5, 28, 42,  3,  42,  8, 52,  2, 11, 41,  4,
35, 21,  3, 17, 10, 16,  1, 68, 105, 45, 23,  5, 10, 12, 17
) 

# The above needs comma (,) but the below does not. 

x <- scan() 
30 17 65  8 38 35  4 19   7 14 12  4  5  4  2 
 7  5 12 50 33 10 15  2  10  1  5 30 41 21 31 
 1 18 12  5 24  7  6 31   1  3  2  2  1 30  2
 1  3 12 12  9 28  6 50  63  5 17 11 23  2 46
90 13 21 55 43  5 19 47  24  4  6 27  4  6 37 
16 41 68  9  5 28 42  3  42  8 52  2 11 41  4
35 21  3 17 10 16  1 68 105 45 23  5 10 12 17

# Figure 6.1-4 (a): PDF 
hist(x) # frequencey

hist(x, prob=TRUE)  # relative frequency 
# The above is slightly different from the textbook (Figure 6.1-4 (a)).

# Let's change intervals
intervals = seq(0,108, by=9)
hist(x, breaks=intervals, prob=TRUE)  # relative frequency 
curve( (1/20)*exp(-x/20), 0, 108, add=TRUE, col="blue")

# Figure 6.1-4 (b): CDF
Fn = ecdf(x)
plot(Fn)
curve( 1- exp(-x/20), 0, 108, add=TRUE, col="red")
