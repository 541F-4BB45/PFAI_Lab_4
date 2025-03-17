# Install tidyr if not already installed
if (!require(tidyr)) {
  install.packages("tidyr")
}

# Load the tidyr library
library(tidyr)

# Create a sample data frame
df <- data.frame(
  ID = 1:3,
  Name = c("Alice", "Bob", "Charlie"),
  Math = c(90, 85, 88),
  Science = c(92, 89, 94)
)

# Pivot from wide to long format
df_long <- df %>%
  pivot_longer(cols = c(Math, Science),
               names_to = "Subject",
               values_to = "Score")
print("Long format:")
print(df_long)

# Pivot from long to wide format
df_wide <- df_long %>%
  pivot_wider(names_from = "Subject",
              values_from = "Score")
print("Wide format:")
print(df_wide)
