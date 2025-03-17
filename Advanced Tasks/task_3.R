# Install and load the caret package
if (!require(caret)) {
  install.packages("caret")
}
library(caret)

# Load the iris dataset
data(iris)

# Set up training control
train_control <- trainControl(method = "cv", number = 10)

# Train a decision tree model
model <- train(Species ~ ., data = iris, method = "rpart", trControl = train_control)

# Display the model
print(model)
