# Lesson 15 - Base Graphics in R

# Load cars dataset
data(cars)
head(cars)

# Basic plot of cars
plot(cars)

# More control over axis mapping
plot(x = cars$speed, y = cars$dist)
plot(x = cars$dist, y = cars$speed)  # reversed

# Add axis labels
plot(x = cars$speed, y = cars$dist, xlab = "Speed")
plot(x = cars$speed, y = cars$dist, ylab = "Stopping Distance")
plot(x = cars$speed, y = cars$dist, xlab = "Speed", ylab = "Stopping Distance")

# Add titles
plot(cars, main = "My Plot")
plot(cars, sub = "My Plot Subtitle")

# Customize color and shape
plot(cars, col = 2)  # red
plot(cars, xlim = c(10, 15))
plot(cars, pch = 2)  # triangle

# Load mtcars dataset
data(mtcars)

# Boxplot: mpg by cylinder count
boxplot(formula = mpg ~ cyl, data = mtcars)

# Histogram of mpg
hist(mtcars$mpg)
