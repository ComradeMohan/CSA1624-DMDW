# Given data
pencils <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)

# Calculate mean
mean_value <- mean(pencils)

# Calculate median
median_value <- median(pencils)

# Calculate mode
mode_value <- as.numeric(names(sort(table(pencils), decreasing = TRUE)[1]))

# Print the results
print(paste("Mean:", mean_value))
print(paste("Median:", median_value))
print(paste("Mode:", mode_value))
