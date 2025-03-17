# Install and load the rvest package
if (!require(rvest)) {
  install.packages("rvest")
}
library(rvest)

# Define the URL of the webpage to scrape
url <- "https://webscraper.io/test-sites/e-commerce/allinone"

# Read the HTML content of the webpage
webpage <- read_html(url)

# Extract data using CSS selectors
titles <- webpage %>%
  html_nodes(".title_class") %>%
  html_text()

# Display the extracted titles
print(titles)
