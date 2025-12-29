# Lesson 7: Matrices and Data Frames

# Create a vector with numbers 1 to 20
my_vector <- 1:20

# Check the contents
my_vector

# Check the dimensions of the vector
dim(my_vector)  # NULL

# Check the length of the vector
length(my_vector)  # 20

# Set the dimensions to 4 rows and 5 columns (makes it a matrix)
dim(my_vector) <- c(4, 5)

# Confirm it's now a matrix
dim(my_vector)
attributes(my_vector)
class(my_vector)  # "matrix"

# Assign to new variable called my_matrix
my_matrix <- my_vector

# Create a second identical matrix using matrix() function
my_matrix2 <- matrix(1:20, nrow = 4, ncol = 5)

# Confirm both matrices are identical
identical(my_matrix, my_matrix2)  # TRUE

# Create character vector of patient names
patients <- c("Bill", "Gina", "Kelly", "Sean")

# Try combining patients and my_matrix using cbind()
cbind(patients, my_matrix)  # Coerces all to character

# Correct way: use data.frame() to preserve data types
my_data <- data.frame(patients, my_matrix)

# View the data
my_data

# Confirm it's a data frame
class(my_data)  # "data.frame"

# Create character vector of column names
cnames <- c("patient", "age", "weight", "bp", "rating", "test")

# Set column names using colnames()
colnames(my_data) <- cnames

# View final data
my_data
