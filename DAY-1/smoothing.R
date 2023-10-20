# Given data
data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)

# Number of bins
num_bins <- 5

# (a) Smoothing by bin mean
bin_means <- tapply(data, cut(data, num_bins), mean)
smoothed_data_mean <- unlist(bin_means)

# (b) Smoothing by bin median
bin_medians <- tapply(data, cut(data, num_bins), median)
smoothed_data_median <- unlist(bin_medians)

# (c) Smoothing by bin boundaries
bin_intervals <- cut(data, num_bins)
bin_boundaries <- as.numeric(levels(bin_intervals))
smoothed_data_boundaries <- bin_boundaries[as.numeric(bin_intervals)]

# Print the results
cat("Original Data: ", data, "\n")
cat("(a) Smoothing by Bin Mean: ", smoothed_data_mean, "\n")
cat("(b) Smoothing by Bin Median: ", smoothed_data_median, "\n")
cat("(c) Smoothing by Bin Boundaries: ", smoothed_data_boundaries, "\n")
