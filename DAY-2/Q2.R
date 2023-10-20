# Create the dataset
prices <- c(1, 1, 5, 5, 5, 5, 5, 8, 8, 10, 10, 10, 10, 12, 14, 14, 14, 15, 15, 15, 15, 15, 15, 18, 18, 18, 18, 18, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 25, 25, 25, 25, 25, 28, 28, 30)

# (i) Partition the dataset using equal-frequency method with 3 bins
bin_equal_frequency <- cut(prices, breaks = quantile(prices, probs = c(0, 1/3, 2/3, 1)), labels = FALSE)
print(bin_equal_frequency)
# (ii) Apply data smoothing using bin means and bin boundaries
print(bin_means <- tapply(prices, bin_equal_frequency, mean))
bin_boundaries <- quantile(prices, probs = c(0, 1/3, 2/3, 1))

# (iii) Plot Histogram for the above frequency division
hist(prices, breaks = bin_boundaries, main = "Histogram with Equal-Frequency Partitioning (3 Bins)",
     xlab = "Prices", ylab = "Frequency", col="lightblue")