# Regression

# Importing the dataset
dataset = read.csv('Position_Salaries.csv')

# Splitting the dataset into the Training set and Test set
# # install.packages('caTools')
# library(caTools)
# set.seed(123)
# split = sample.split(dataset$Salary, SplitRatio = 2/3)
# training_set = subset(dataset, split == TRUE)
# test_set = subset(dataset, split == FALSE)

# Feature Scaling
# training_set = scale(training_set)
# test_set = scale(test_set)

# Fitting Regression to the dataset
# Create regressor here

# Visualising the Regression results
# install.packages('ggplot2')
library(ggplot2)
ggplot() +
  geom_point(aes(x = dataset$Level, y = dataset$Salary),
             colour = 'red') +
  geom_line(aes(x = dataset$Level, y = predict(regressor, newdata = dataset)),
            colour = 'blue') +
  ggtitle('Truth or Bluff (Regression)') +
  xlab('Level') +
  ylab('Salary')

# # Visualising the Regression Model results (for higher resolution and smoother curve)
# # install.packages('ggplot2')
# library(ggplot2)
# x_grid = seq(min(dataset$Level), max(dataset$Level), 0.1)
# ggplot() +
#   geom_point(aes(x = dataset$Level, y = dataset$Salary),
#              colour = 'red') +
#   geom_line(aes(x = x_grid, y = predict(poly_reg,
#                                         newdata = data.frame(Level = x_grid,
#                                                              Level2 = x_grid^2,
#                                                              Level3 = x_grid^3,
#                                                              Level4 = x_grid^4))),
#             colour = 'blue') +
#   ggtitle('Truth or Bluff (Polynomial Regression)') +
#   xlab('Level') +
#   ylab('Salary')

# Predicting a new result with Regression
predict(regressor, data.frame(Level = 6.5))