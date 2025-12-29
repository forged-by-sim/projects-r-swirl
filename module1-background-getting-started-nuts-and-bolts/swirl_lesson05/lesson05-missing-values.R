# Lesson 5: Missing Values

# Create a vector with missing values
x <- c(44, NA, 5, NA)

# Multiply the vector by 3
x * 3

# Generate a vector of 1000 random normal values
y <- rnorm(1000)

# Generate a vector of 1000 NAs
z <- rep(NA, 1000)

# Sample 100 elements from the combined vector
my_data <- sample(c(y, z), 100)

# Identify which elements are NA
my_na <- is.na(my_data)

# Print logical vector showing where NA values are
my_na

# Try comparing directly using ==
my_data == NA

# Count number of TRUEs in my_na (i.e., number of NAs)
sum(my_na)

# Print the original data
my_data

# Create a NaN by dividing 0 by 0
0 / 0

# Create another NaN by subtracting Inf from Inf
Inf - Inf
