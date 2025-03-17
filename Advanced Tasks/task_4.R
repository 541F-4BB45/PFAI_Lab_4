# Install and load the xts and zoo packages
if (!require(xts)) {
  install.packages("xts")
}
if (!require(zoo)) {
  install.packages("zoo")
}
library(xts)
library(zoo)

# Create a time-series object
dates <- seq.Date(from = as.Date("2024-01-01"), by = "month", length.out = 12)
values <- rnorm(12)
ts_data <- xts(values, order.by = dates)

# Plot the time-series data
plot(ts_data, main = "Monthly Random Data", ylab = "Value", xlab = "Date")

