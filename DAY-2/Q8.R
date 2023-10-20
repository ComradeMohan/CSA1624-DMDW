# Load the mtcars dataset (if not already loaded)
data(mtcars)

# Create a boxplot graph
boxplot(mpg ~ cyl, data = mtcars, 
        main = "Boxplot of MPG by Number of Cylinders",
        xlab = "Number of Cylinders",
        ylab = "Miles per Gallon",
        col = "lightgreen",
        border="orange")