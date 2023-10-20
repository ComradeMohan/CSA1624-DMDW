# Define the intervals and frequencies
intervals <- c("1-5", "5-15", "15-20", "20-50", "50-80", "80-110")
frequencies <- c(200, 450, 300, 1500, 700, 44)

# Create a data frame
data <- data.frame(Interval = intervals, Frequency = frequencies)

# Compute the cumulative frequency
data$CumulativeFrequency <- cumsum(data$Frequency)

# Find the total frequency
totalFrequency <- sum(data$Frequency)

# Find the median class
medianClassIndex <- which(data$CumulativeFrequency >= totalFrequency / 2)[1]

# Compute the approximate median value+
lowerBound <- as.numeric(unlist(strsplit(data$Interval[medianClassIndex], "-"))[1])
upperBound <- as.numeric(unlist(strsplit(data$Interval[medianClassIndex], "-"))[2])
median <- lowerBound + (totalFrequency / 2 - data$CumulativeFrequency[medianClassIndex - 1]) / data$Frequency[medianClassIndex] * (upperBound - lowerBound)

# Print the result
cat("Approximate Median Value:",median,"\n")