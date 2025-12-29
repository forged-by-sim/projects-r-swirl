#Lesson 09: Functions 

# Basic function examples
Sys.Date()
mean(c(2, 4, 5))

# Creating and testing your first function
boring_function <- function(x) {
  x
}
boring_function("My first function!")

# Viewing the source code of a function
boring_function

# Recreating the mean() function
my_mean <- function(my_vector) {
  sum(my_vector) / length(my_vector)
}
my_mean(c(4, 5, 10))

# Function with default arguments
remainder <- function(num, divisor = 2) {
  num %% divisor
}
remainder(5)
remainder(11, 5)
remainder(divisor = 11, num = 5)
remainder(4, div = 2)

# Inspecting function arguments
args(remainder)

# Function as argument (higher-order functions)
evaluate <- function(func, dat) {
  func(dat)
}
evaluate(sd, c(1.4, 3.6, 7.9, 8.8))

# Anonymous functions
evaluate(function(x) { x + 1 }, 6)
evaluate(function(x) x[1], c(8, 4, 0))
evaluate(function(x) x[length(x)], c(8, 4, 0))

# Using paste()
?paste
paste("Programming", "is", "fun!")

# Modified paste() version: telegram function
telegram <- function(...) {
  paste("START", ..., "STOP")
}
telegram()

# mad_libs function
mad_libs <- function(place, adjective, noun) {
  paste("News from", place, "today where students took to the streets in protest of the new", adjective, "being installed on campus.")
}
mad_libs("place", "adjective", "noun")

# Custom binary operator
"%p%" <- function(left, right) {
  paste(left, right)
}
"I" %p% "love" %p% "R!"
