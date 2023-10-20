# Load the AirPassengers dataset
data("AirPassengers")

# Create a histogram with specified bins
hist(AirPassengers, 
     breaks = seq(100, 700, by = 150), # Set breaks at 100 and then every 150 units
     xlab = "Passenger Count",      # Label for the x-axis
     ylab = "Frequency",            # Label for the y-axis
     main = "AirPassengers Histogram", # Main title
     col = "lightblue",            # Bar color
     border = "black"              # Border color
)