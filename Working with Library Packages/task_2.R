# Install dplyr if not already installed
if (!require(dplyr)) {
  install.packages("dplyr")
}

# Load the dplyr library
library(dplyr)

# Filter and arrange the iris dataset
iris %>%
  filter(Species == "setosa") %>%
  arrange(Sepal.Length)