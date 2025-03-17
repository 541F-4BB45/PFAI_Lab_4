# Install data.table if not already installed
if (!require(data.table)) {
  install.packages("data.table")
}

# Load the data.table library
library(data.table)

# Create a data table
dt <- data.table(
  ID = 1:5,
  Category = c("A", "B", "A", "B", "A"),
  Value = c(10, 20, 30, 40, 50)
)

# Print the data table
print("Data Table:")
print(dt)

# Perform aggregation: sum of 'Value' by 'Category'
dt_agg <- dt[, .(TotalValue = sum(Value)), by = Category]
print("Aggregated Data:")
print(dt_agg)
