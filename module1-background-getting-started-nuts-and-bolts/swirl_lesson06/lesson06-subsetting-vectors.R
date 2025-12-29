# Lesson 6: Subsetting Vectors 

# Create a vector x with a random ordering of 20 numbers and 20 NAs
x

# View the first 10 elements of x
x[1:10]

# Use is.na() to find which elements are NA
is.na(x)

# Subset x to return only the NA values
x[is.na(x)]

# Subset x to return only the non-NA values
y <- x[!is.na(x)]
y

# Subset y to get only positive values
y[y > 0]

# Subset x directly using x > 0
x[x > 0]

# Combine logical conditions: not NA and greater than 0
x[!is.na(x) & x > 0]

# Subset the 3rd, 5th, and 7th elements of x
x[c(3, 5, 7)]

# Try to access index 0 and a non-existent 3000th element
x[0]
x[3000]

# Exclude the 2nd and 10th elements of x using negative indexing
x[c(-2, -10)]
x[-c(2, 10)]

# Create a named numeric vector
vect <- c(foo = 11, bar = 2, norf = NA)
vect

# Get the names of vect
names(vect)

# Create an unnamed vector and add names after
vect2 <- c(11, 2, NA)
names(vect2) <- c("foo", "bar", "norf")

# Check if vect and vect2 are identical
identical(vect, vect2)

# Subset vect by named elements
vect["bar"]
vect[c("foo", "bar")]
