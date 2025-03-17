# Install and load the lubridate package
if (!require(lubridate)) {
  install.packages("lubridate")
}
library(lubridate)

# Parse dates with different formats
date1 <- mdy("12/31/2024")
date2 <- dmy("31-12-2024")
date3 <- ymd("2024-12-31")

# Display parsed dates
print(date1)
print(date2)
print(date3)

# Format dates
formatted_date <- format(date1, "%B %d, %Y")
print(formatted_date)