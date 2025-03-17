# Install ggplot2 if not already installed
if (!require(ggplot2)) {
  install.packages("ggplot2")
}

# Load the ggplot2 library
library(ggplot2)

# Create a basic scatterplot
plot <- ggplot(data = mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  labs(title = "Scatterplot of Weight vs. Miles Per Gallon",
       x = "Weight (1000 lbs)",
       y = "Miles Per Gallon")

# Explicitly print the plot (for non-interactive environments)
print(plot)