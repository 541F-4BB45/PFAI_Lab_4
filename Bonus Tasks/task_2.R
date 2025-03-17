# Install plotly if not already installed
if (!require(plotly)) {
  install.packages("plotly")
}
library(plotly)

# Create a simple interactive scatter plot
p <- plot_ly(data = iris, x = ~Sepal.Length, y = ~Sepal.Width, type = 'scatter', mode = 'markers')
p
