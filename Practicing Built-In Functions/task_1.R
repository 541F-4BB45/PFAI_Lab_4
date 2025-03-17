# Create a numeric vector
numbers <- c(1, 2, 3, 3, 4, 5, 6, 7, 7, 7, 8, 9)


# Mean
mean_value <- mean(numbers)
print(paste("Mean:", mean_value))


# Median
median_value <- median(numbers)
print(paste("Median:", median_value))


# Mode
getmode <- function(v) {
  count <- 0      # Initialize count to 0
  current <- v[1] # Initialize current to the first element
  for (num in v) {
    if (num == current) {
      count <- count + 1  # Increase count if num matches current
    } else {
      count <- count - 1  # Decrease count if num does not match
      if (count == 0) {
        current <- num    # Change current to num if count reaches 0
        count <- 1         # Start counting for the new current number
      }
    }
  }
  
  return(current)
}


mode_value <- getmode(numbers)
print(paste("Mode:", mode_value))
