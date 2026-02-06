# Lesson 4: Logical and Character Vectors in R

# Create a numeric vector
num_vect <- c(0.5, 55, -10, 6)

# Logical comparison: elements of num_vect less than 1
tf <- num_vect < 1
print(tf)
# Output: TRUE FALSE TRUE FALSE

# Logical comparison: elements greater than or equal to 6
num_vect >= 6
# Output: FALSE TRUE FALSE TRUE

# Logical operators (AND, OR, NOT)
# TRUE & FALSE => FALSE
# TRUE | FALSE => TRUE
# !(TRUE) => FALSE

# Practice with combined logical statements
(3 > 5) & (4 == 4)           # FALSE
(TRUE == TRUE) | (TRUE == FALSE)   # TRUE
(((111 >= 111)) | !(TRUE)) & ((4 + 1) == 5)  # TRUE

# -----------------------------------------------
# Character vectors
# -----------------------------------------------

# Create a character vector
my_char <- c("My", "name", "is")

# Use paste() to collapse into a single string
paste(my_char, collapse = " ")
# Output: "My name is"

# Add your name to the character vector
my_name <- c(my_char, "Noemi")

# Collapse again into a sentence
paste(my_name, collapse = " ")
# Output: "My name is Noemi"

# -----------------------------------------------
# paste() with multiple vectors
# -----------------------------------------------

# Basic paste with sep argument
paste("Hello", "world!", sep = " ")
# Output: "Hello world!"

# Join vectors of equal length
paste(1:3, c("X", "Y", "Z"), sep = " ")
# Output: "1 X" "2 Y" "3 Z"

# paste() with unequal lengths – vector recycling
paste(LETTERS, 1:4, sep = "-")
# Output: "A-1" "B-2" "C-3" "D-4" "E-1" "F-2" ... up to "Z-2"


